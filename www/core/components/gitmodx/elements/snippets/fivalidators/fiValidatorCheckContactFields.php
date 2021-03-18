<?php
/**
 * @var $key
 * @var $value
 * @var $param
 * @var fiValidator $validator
 */


$callWay = $validator->formit->request->dictionary->get('call_way');
if ($callWay == $key) {
    if ($key == 'email') {
        if (empty($value) || !preg_match('#^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$#mui', $value)) {
            $validator->addError($key, 'Укажите корректно ' . $key);
            return false;
        }
    } else {
        if (empty($value)) {
            $validator->addError($key, 'Не указано поле: ' . $key);
            return false;
        }
    }
}
return true;

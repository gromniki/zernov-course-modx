{set $fields = [
    'name' => 'Имя',
    'company' => 'Компания',
    'email' => 'Email',
    'phone' => 'Телефон',
    'message' => 'Сообщение',
    'comment' => 'Сообщение',
    'description' => 'О проекте',
    'services' => 'Услуги',
    'budget' => 'Бюджет',
    'urlFrom' => 'Адрес страницы, с которой была отправлена форма',
]}

{foreach $fields as $name => $label}
    {if $_pls[$name]}
        <p>{$label} : {$_pls[$name]}</p>
    {/if}
{/foreach}

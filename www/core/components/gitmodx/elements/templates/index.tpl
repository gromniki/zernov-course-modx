<!DOCTYPE html>
<html lang="ru">
<head>
  {include 'b.head'}
</head>
<body>
{include 'b.header'}
<div class="wrapper footer_v1_mod">
    <div class="base footer_v1_mod">
        {include 'b.mainHero'}
        {include 'b.mainNews'}

        {* TODO Сделать этот блок *}
        <ul class="split_list v1_mod">
            <li class="split_item layout_mod_v1 bg_mod_v1">
                {include 'b.mainNewProducts'}
            </li>
            <li class="split_item layout_mod_v2 bg_mod_v2">
                {include 'b.mainActions'}
            </li>
        </ul>
        {include 'b.mainWhereToBuy'}
    </div>
</div>
{include 'b.footer'}
{include 'b.footerScripts'}
</body>
</html>

<!DOCTYPE html>
<html lang="ru">
<head>
  {include 'b.head'}
</head>
<body>
{include 'b.header'}
<div class="wrapper footer_v1_mod">
    <div class="base footer_v1_mod">
        {include 'b.pageTitleWithBg'}
        {include 'b.breadCrumbs'
            version = 3
        }
        <ul class="split_list v2_mod">
            {include 'b.meetOurProduction'}
            {include 'b.wantToChangeElectrics'}
            {include 'b.customersWhereToBuy'}
            {include 'b.customersSignUp'}
            {include 'b.customersNewProducts'}
            {include 'b.customersSignIn'}
        </ul>
        {include 'b.customersWorkProcess'}
        {include 'b.mainNews'}
    </div>
</div>
{include 'b.footer'}
{include 'b.footerScripts'}

{include 'b.youtubePopup'}

</body>
</html>

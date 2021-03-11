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
            {include 'b.customersMoreAboutCollaborate'}
            {include 'b.customersWhatYouTake'}
            {include 'b.meetOurProduction'}
            {include 'b.customersSignIn'}
            {include 'b.customersNewProductsV3'}
            {include 'b.customersActions'}
        </ul>
        {include 'b.customersCollab'}
    </div>
</div>
{include 'b.footer'}
{include 'b.footerScripts'}
</body>
</html>

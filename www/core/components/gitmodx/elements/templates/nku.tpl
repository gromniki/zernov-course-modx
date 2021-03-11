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
        <div class="cooperation_block v2_mod">
            <div class="cooperation_i_w v2_mod"><img alt="" src="assets/i/man_3.png" class="cooperation_i v2_mod">
            </div>
            <div class="cooperation_block_in v2_mod">
                <h2 class="cooperation_title v2_mod">{$_modx->resource.collaborateTitle ?: 'Приглашаем к сотрудничеству'}</h2>
                <div class="cooperation_text v2_mod">
                    {$_modx->resource.collaborateText ?: 'Наша компания готова предложить широкий спектр электрооборудования собственного производства'}
                </div>
            </div>
        </div>
        {include 'b.customersWorkProcess'}
        <ul class="split_list v2_mod">
            {include 'b.meetOurProduction'}
            {include 'b.customersSignUp'}
            {include 'b.customersWhereToBuy'}
            {include 'b.customersSignIn'}
            {include 'b.customersGost'}
            {include 'b.customersNewProductsV2'}
        </ul>
        {include 'b.customersCollab'}
        {include 'b.mainNews'}
    </div>
</div>
{include 'b.footer'}
{include 'b.footerScripts'}
{include 'b.youtubePopup'}
</body>
</html>

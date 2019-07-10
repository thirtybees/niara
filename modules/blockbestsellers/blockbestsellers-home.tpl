{**
 * Copyright (C) 2017-2019 thirty bees
 * Copyright (C) 2007-2016 PrestaShop SA
 *
 * thirty bees is an extension to the PrestaShop software by PrestaShop SA.
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@thirtybees.com so we can send you a copy immediately.
 *
 * @author    thirty bees <modules@thirtybees.com>
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2017-2019 thirty bees
 * @copyright 2007-2016 PrestaShop SA
 * @license   Academic Free License (AFL 3.0)
 * PrestaShop is an internationally registered trademark of PrestaShop SA.
 *}

<!-- MODULE Block best sellers -->
<div class="tm-home col-xs-12">
{if isset($best_sellers) && $best_sellers}
  <div class="tm-hp text-center">
    <h2><span class="tm-over">{l s='What others' mod='blockbestsellers'} <span>{l s='love' mod='blockbestsellers'}</span> {l s='most'}</span></h2>
    <p>{l s='Browse our top selling products.' mod='blockbestsellers'}</p>
  </div>
  {include file="$tpl_dir./product-list.tpl" products=$best_sellers class='blockbestsellers' id='blockbestsellers'}
{else}
  <ul id="blockbestsellers" class="blockbestsellers">
    <li class="alert alert-info">{l s='No best sellers at this time.' mod='blockbestsellers'}</li>
  </ul>
{/if}
</div>
<!-- /MODULE Block best sellers -->

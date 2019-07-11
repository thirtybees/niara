{**
 * Copyright (C) 2019 thirty bees
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@thirtybees.com so we can send you a copy immediately.
 *
 * @author    thirty bees <modules@thirtybees.com>
 * @copyright 2019 thirty bees
 * @license   Academic Free License (AFL 3.0)
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
    <li class="alert alert-info">{l s='No best sellers at this time11.' mod='blockbestsellers'}</li>
  </ul>
{/if}
</div>
<!-- /MODULE Block best sellers -->

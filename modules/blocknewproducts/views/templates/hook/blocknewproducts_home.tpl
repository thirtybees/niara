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

<!-- MODULE Block New Products -->
<div class="tm-home col-xs-12">
{if isset($new_products) && $new_products}
	<div class="tm-hp text-center">
	<h2><span class="tm-over">{l s='Our' mod='blockbestsellers'} <span>{l s='new' mod='blockbestsellers'}</span> {l s='Products'}</span></h2>
	<p>{l s='Browse our new arrivals.' mod='blockbestsellers'}</p>
	</div>
	{include file="$tpl_dir./product-list.tpl" products=$new_products class='blocknewproducts tab-pane' id='blocknewproducts'}
{else}
<ul id="blocknewproducts" class="blocknewproducts tab-pane">
	<li class="alert alert-info">{l s='No new products at this time.' mod='blocknewproducts'}</li>
</ul>
{/if}
</div>
<!-- /MODULE Block New Products -->

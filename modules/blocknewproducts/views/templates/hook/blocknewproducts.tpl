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

<!-- MODULE Block new products -->
<div id="new-products_block_right" class="block products_block">
	<h4 class="title_block"><a href="{$link->getPageLink('new-products')|escape:'html'}" title="{l s='New products' mod='blocknewproducts'}">{l s='New products' mod='blocknewproducts'}</a></h4>
	<div class="block_content">
	{if $new_products !== false}
		{include file="$tpl_dir./product-list-column.tpl" products=$new_products class='blocknewproducts' id='blocknewproducts'}
			<p><a href="{$link->getPageLink('new-products')|escape:'html'}" title="{l s='All new products' mod='blocknewproducts'}" class="btn btn-warning">&raquo; {l s='All new products' mod='blocknewproducts'}</a></p>
	{else}
		<p>&raquo; {l s='Do not allow new products at this time.' mod='blocknewproducts'}</p>
	{/if}
	</div>
</div>
<!-- /MODULE Block new products -->

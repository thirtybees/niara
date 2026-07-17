{**
 * Copyright (C) 2017-2024 thirty bees
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
 * @copyright 2017-2024 thirty bees
 * @license   Academic Free License (AFL 3.0)
 *}
<section>
    <div id="best-sellers_block_right" class="block products_block">
        <h2 class="title_block section-title-column">
            <a href="{$link->getPageLink('best-sales')|escape:'html'}"
               title="{l s='View a top sellers products' mod='blockbestsellers'}">{l s='Top sellers' mod='blockbestsellers'}</a>
        </h2>
        <div class="block_content products-block">
            {if isset($best_sellers) && is_array($best_sellers) && !empty($best_sellers)}
                <ul>
                    {foreach from=$best_sellers item=product name=myLoop}
                        <li class="clearfix">
                            <article>
                                <a href="{$product.link|escape:'html'}" title="{$product.legend|escape:'html':'UTF-8'}"
                                   class="products-block-image content_img clearfix">
                                  {if !empty($lazy_load)}
                                    <noscript>
                                      <img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'small', null, ImageManager::retinaSupport())|escape:'html'}"
                                           alt="{$product.legend|escape:'html':'UTF-8'}"
                                           width="{getWidthSize|intval type='small'}"
                                           height="{getHeightSize|intval type='small'}"
                                      >
                                    </noscript>
                                  {/if}
                                  <picture class="img-responsive{if !empty($lazy_load)} tb-lazy-image{/if}">
                                    <!--[if IE 9]><video style="display: none;"><![endif]-->
                                    {if !empty($webp)}
                                    <source {if !empty($lazy_load)}srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII= 1w" data-{/if}srcset="{$link->getImageLink($product.link_rewrite, $product.id_image, 'small', 'webp', ImageManager::retinaSupport())|escape:'html'}"
                                            sizes="1px"
                                            type="image/webp"
                                    >
                                    {/if}
                                    <!--[if IE 9]></video><![endif]-->
                                    <img {if !empty($lazy_load)}srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII= 1w" data-{/if}srcset="{$link->getImageLink($product.link_rewrite, $product.id_image, 'small', null, ImageManager::retinaSupport())|escape:'html'}"
                                         {if !empty($lazy_load)}src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="{/if}
                                         sizes="1px"
                                         alt="{$product.legend|escape:'html':'UTF-8'}"
                                         width="{getWidthSize|intval type='small'}"
                                         height="{getHeightSize|intval type='small'}"
                                    >
                                  </picture>
                                </a>
                                <div class="product-content">
                                    <h5>
                                        <a class="product-name" href="{$product.link|escape:'html'}"
                                           title="{$product.legend|escape:'html':'UTF-8'}">
                                            {$product.name|strip_tags:'UTF-8'|escape:'html':'UTF-8'}
                                        </a>
                                    </h5>
                                    <p class="product-description">{$product.description_short|strip_tags:'UTF-8'|truncate:75:'...'}</p>
                                    {if !$PS_CATALOG_MODE}
                                        <div class="price-box">
                                            <span class="price">{$product.price}</span>
                                            {hook h="displayProductPriceBlock" product=$product type="price"}
                                        </div>
                                    {/if}
                                </div>
                            </article>
                        </li>
                    {/foreach}
                </ul>
                <div class="lnk">
                    <a href="{$link->getPageLink('best-sales')|escape:'html'}"
                       title="{l s='All best sellers' mod='blockbestsellers'}"
                       class="btn btn-primary"><span>{l s='All best sellers' mod='blockbestsellers'} <i
                                    class="fas fa-chevron-right"></i></span></a>
                </div>
            {else}
                <p>{l s='No best sellers at this time' mod='blockbestsellers'}</p>
            {/if}
        </div>
    </div>
</section>

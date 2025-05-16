<section>
    <div id="new-products_block_right" class="block products_block">
        <h2 class="title_block section-title-column">
            <a href="{$link->getPageLink('new-products')|escape:'html'}"
               title="{l s='New products' mod='blocknewproducts'}">{l s='New products' mod='blocknewproducts'}</a>
        </h2>
        <div class="block_content products-block">
            {if $new_products !== false}
                <ul>
                    {foreach from=$new_products item=newproduct name=myLoop}
                        <li class="clearfix">
                            <article>
                                <a class="products-block-image" href="{$newproduct.link|escape:'html'}"
                                   title="{$newproduct.legend|escape:html:'UTF-8'}"><img
                                            class="replace-2x img-responsive"
                                            src="{$link->getImageLink($newproduct.link_rewrite, $newproduct.id_image, 'small')|escape:'html'}"
                                            alt="{$newproduct.name|escape:html:'UTF-8'}"
                                            title="{$newproduct.name|escape:html:'UTF-8'}"></a>
                                <div class="product-content">
                                    <h3 class="product-title">
                                        <a class="product-name" href="{$newproduct.link|escape:'html'}"
                                           title="{$newproduct.name|escape:html:'UTF-8'}">{$newproduct.name|strip_tags|escape:html:'UTF-8'}</a>
                                    </h3>
                                    <p class="product-description">{$newproduct.description_short|strip_tags:'UTF-8'|truncate:75:'...'}</p>
                                    {if (!$PS_CATALOG_MODE AND ((isset($newproduct.show_price) && $newproduct.show_price) || (isset($newproduct.available_for_order) && $newproduct.available_for_order)))}
                                        {if isset($newproduct.show_price) && $newproduct.show_price && !isset($restricted_country_mode)}
                                            <div class="price-box">
                    <span class="price">
                      {if !$priceDisplay}{convertPrice price=$newproduct.price}{else}{convertPrice price=$newproduct.price_tax_exc}{/if}
                    </span>
                                                {hook h="displayProductPriceBlock" product=$newproduct type="price"}
                                            </div>
                                        {/if}
                                    {/if}
                                </div>
                            </article>
                        </li>
                    {/foreach}
                </ul>
                <div>
                    <a href="{$link->getPageLink('new-products')|escape:'html'}"
                       title="{l s='All new products' mod='blocknewproducts'}"
                       class="btn btn-primary"><span>{l s='All new products' mod='blocknewproducts'} <i
                                    class="fas fa-chevron-right"></i></span></a>
                </div>
            {else}
                <p>&raquo; {l s='No new products at this time.' mod='blocknewproducts'}</p>
            {/if}
        </div>
    </div>
</section>

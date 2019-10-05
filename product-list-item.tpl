<article>
    <div class="product-container" itemscope itemtype="https://schema.org/Product">
        <div class="product-image-container">
            <a class="product_img_link"
               href="{$product.link|escape:'html':'UTF-8'}"
               title="{$product.name|escape:'html':'UTF-8'}"
               itemprop="url"
            >
              {if !empty($lazy_load)}
                <noscript>
                  <img class="img-responsive center-block"
                       src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home', null, ImageManager::retinaSupport())|escape:'html':'UTF-8'}"
                       srcset="
                     {$link->getImageLink($product.link_rewrite, $product.id_image, 'home_smallest', null, ImageManager::retinaSupport())|escape:'html':'UTF-8'} 211w,
                     {$link->getImageLink($product.link_rewrite, $product.id_image, 'home_smaller', null, ImageManager::retinaSupport())|escape:'html':'UTF-8'} 218w,
                     {$link->getImageLink($product.link_rewrite, $product.id_image, 'home', null, ImageManager::retinaSupport())|escape:'html':'UTF-8'} 250w"
                       sizes="(min-width: 1200px) 250px, (min-width: 992px) 218px, (min-width: 768px) 211px, 250px"
                       alt="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}"
                       title="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}"
                       itemprop="image"
                       width="{getWidthSize|intval type='home'}"
                       height="{getHeightSize|intval type='home'}"
                  >
                </noscript>
              {/if}
              <picture {if $lazy_load}class="tb-lazy-image"{/if}>
                <!--[if IE 9]><video style="display: none;"><![endif]-->
                {if !empty($webp)}
                  <source class="img-responsive center-block"
                          {if !empty($lazy_load)}srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII= 1w" data-{/if}srcset="
                          {$link->getImageLink($product.link_rewrite, $product.id_image, 'home_smallest', 'webp', ImageManager::retinaSupport())|escape:'html':'UTF-8'} 211w,
                          {$link->getImageLink($product.link_rewrite, $product.id_image, 'home_smaller', 'webp', ImageManager::retinaSupport())|escape:'html':'UTF-8'} 218w,
                          {$link->getImageLink($product.link_rewrite, $product.id_image, 'home', 'webp', ImageManager::retinaSupport())|escape:'html':'UTF-8'} 250w"
                          sizes="(min-width: 1200px) 250px, (min-width: 992px) 218px, (min-width: 768px) 211px, 250px"
                          title="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}"
                          type="image/webp"
                          itemprop="image"
                  >
                {/if}
                <!--[if IE 9]></video><![endif]-->

                <img class="img-responsive center-block"
                     {if !empty($lazy_load)}src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="{/if}
                     {if !empty($lazy_load)}srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII= 1w" data-{/if}srcset="
                     {$link->getImageLink($product.link_rewrite, $product.id_image, 'home_smallest', null, ImageManager::retinaSupport())|escape:'html':'UTF-8'} 211w,
                     {$link->getImageLink($product.link_rewrite, $product.id_image, 'home_smaller', null, ImageManager::retinaSupport())|escape:'html':'UTF-8'} 218w,
                     {$link->getImageLink($product.link_rewrite, $product.id_image, 'home', null, ImageManager::retinaSupport())|escape:'html':'UTF-8'} 250w"
                     sizes="(min-width: 1200px) 250px, (min-width: 992px) 218px, (min-width: 768px) 211px, 250px"
                     alt="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}"
                     title="{if !empty($product.legend)}{$product.legend|escape:'html':'UTF-8'}{else}{$product.name|escape:'html':'UTF-8'}{/if}"
                     itemprop="image"
                     width="{getWidthSize|intval type='home'}"
                     height="{getHeightSize|intval type='home'}"
                >
                {hook h='productImageHover' id_product = $product.id_product}
                {if isset($quick_view) && $quick_view}
                <a class="quick-view show-if-product-item-hover"
                   href="{$product.link|escape:'html':'UTF-8'}"
                   title="{l s='Open quick view window'}"
                   data-fancybox-target="{$product.link|escape:'html':'UTF-8'}"
                >
                    <i class="icon icon-fullscreen"></i>
                </a>
            {/if}
            {if $show_functional_buttons}
                <div class="functional-buttons clearfix show-if-product-grid-hover">
                    {hook h='displayProductListFunctionalButtons' product=$product}
                    {if isset($comparator_max_item) && $comparator_max_item}
                        <div class="compare">
                            <a class="add_to_compare" title="{l s='Add to Compare'}" href="{$product.link|escape:'html':'UTF-8'}"
                               data-id-product="{$product.id_product}">
                                <i class="icon icon-plus"></i> {l s='Add to Compare'}
                            </a>
                        </div>
                    {/if}
                </div>
            {/if}
              </picture>
            </a>

            <div class="product-label-container">
                {if (!$PS_CATALOG_MODE AND ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
                    {if isset($product.online_only) && $product.online_only}
                        <span class="product-label product-label-online">{l s='Online only'}</span>
                    {/if}
                {/if}
                {if isset($product.new) && $product.new == 1}
                    <span class="product-label product-label-new">{l s='New'}</span>
                {/if}
                {if isset($product.on_sale) && $product.on_sale && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
                    <span class="product-label product-label-sale">{l s='Sale!'}</span>
                {elseif isset($product.reduction) && $product.reduction && isset($product.show_price) && $product.show_price && !$PS_CATALOG_MODE}
                    <span class="product-label product-label-discount">{l s='Reduced price!'}</span>
                {/if}
            </div>

        </div>

        <div class="product-description-container">
            <h3 class="h4 product-name" itemprop="name">
                {if isset($product.pack_quantity) && $product.pack_quantity}{$product.pack_quantity|intval|cat:' x '}{/if}
                <a class="product-name" href="{$product.link|escape:'html':'UTF-8'}"
                   title="{$product.name|escape:'html':'UTF-8'}" itemprop="url">
                    {$product.name|escape:'html':'UTF-8'}
                </a>
            </h3>
            {capture name='displayProductListReviews'}{hook h='displayProductListReviews' product=$product}{/capture}
            {if $smarty.capture.displayProductListReviews}
                <div class="hook-reviews">
                    {$smarty.capture.displayProductListReviews}
                </div>
            {/if}

            {if isset($product.is_virtual) && !$product.is_virtual}{hook h="displayProductDeliveryTime" product=$product}{/if}
            {hook h="displayProductPriceBlock" product=$product type="weight"}

            <p class="product-desc hide-if-product-grid" itemprop="description">
                {$product.description_short|strip_tags:'UTF-8'|truncate:360:'...'}
            </p>
        </div>

        <div class="product-actions-container">

            <div class="product-price-button-wrapper">
                {if (!$PS_CATALOG_MODE AND ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
                    <div class="content_price">
                        {if isset($product.show_price) && $product.show_price && !isset($restricted_country_mode)}
                            {hook h="displayProductPriceBlock" product=$product type='before_price'}
                            <span class="price product-price">
              {if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}
            </span>
                            {if $product.price_without_reduction > 0 && isset($product.specific_prices) && $product.specific_prices && isset($product.specific_prices.reduction) && $product.specific_prices.reduction > 0}
                                {hook h="displayProductPriceBlock" product=$product type="old_price"}
                                <span class="old-price product-price">
                {displayWtPrice p=$product.price_without_reduction}
              </span>
                                {hook h="displayProductPriceBlock" id_product=$product.id_product type="old_price"}
                                {if $product.specific_prices.reduction_type == 'percentage'}
                                    <span class="price-percent-reduction">-{$product.specific_prices.reduction * 100}
                                        %</span>
                                {/if}
                            {/if}
                            {hook h="displayProductPriceBlock" product=$product type="price"}
                            {hook h="displayProductPriceBlock" product=$product type='after_price'}
                            {if !empty($product.unity) && $product.unit_price_ratio > 0.000000}
							    {if !$priceDisplay}{assign var='productPrice' value=$product.price}{else}{assign var='productPrice' value=$product.price_tax_exc}{/if}
                                {math equation="pprice / punit_price" pprice=$productPrice  punit_price=$product.unit_price_ratio assign=unit_price}
					            <p>
								<small>{l s='Content:'} {$product.content_value|string_format:"%.2f"|replace:".":","|replace:".00":""|replace:",00":""} {$product.content_unit|escape:'html':'UTF-8'}<br />
                                <span>{convertPrice price=$unit_price} {l s='per'} {$product.unity|escape:'html':'UTF-8'}</small>
								</p>
                                {hook h="displayProductPriceBlock" product=$product type="unit_price"}
                            {/if}
                        {/if}
                    </div>
                {/if}
                <div class="button-container">
                    {if ($product.id_product_attribute == 0 || (isset($add_prod_display) && ($add_prod_display == 1))) && $product.available_for_order && !isset($restricted_country_mode) && $product.customizable != 2 && !$PS_CATALOG_MODE}
                        {if (!isset($product.customization_required) || !$product.customization_required) && ($product.allow_oosp || $product.quantity > 0)}
                            {capture}add=1&amp;id_product={$product.id_product|intval}{if isset($product.id_product_attribute) && $product.id_product_attribute}&amp;ipa={$product.id_product_attribute|intval}{/if}{if isset($static_token)}&amp;token={$static_token}{/if}{/capture}
                            <a class="ajax_add_to_cart_button btn btn-primary"
                               href="{$link->getPageLink('cart', true, NULL, $smarty.capture.default, false)|escape:'html':'UTF-8'}"
                               rel="nofollow" title="{l s='Add to cart'}"
                               data-id-product-attribute="{$product.id_product_attribute|intval}"
                               data-id-product="{$product.id_product|intval}"
                               data-minimal_quantity="{if isset($product.product_attribute_minimal_quantity) && $product.product_attribute_minimal_quantity >= 1}{$product.product_attribute_minimal_quantity|intval}{else}{$product.minimal_quantity|intval}{/if}">

                                <span><i class="icon icon-shopping-basket"></i>{l s='Add to cart'}</span>
                            </a>
                        {else}
                            <span class="ajax_add_to_cart_button btn btn-primary disabled">
              <span><i class="icon icon-shopping-basket"></i>{l s='Add to cart'}</span>
            </span>
                        {/if}
                    {/if}
                    <!--<a class="btn btn-default" href="{$product.link|escape:'html':'UTF-8'}" title="{l s='View'}">
                        <span>{if (isset($product.customization_required) && $product.customization_required)}{l s='Customize'}{else}{l s='More'}{/if}</span>
                    </a>-->
                </div>
                {if $show_functional_buttons}
                <div class="compare_mb">
                    {if isset($comparator_max_item) && $comparator_max_item}
                        <div class="compare">
                            <a class="add_to_compare" title="{l s='Add to Compare'}" href="{$product.link|escape:'html':'UTF-8'}"
                               data-id-product="{$product.id_product}">
                                <i class="icon icon-plus"></i> {l s='Add to Compare'}
                            </a>
                        </div>
                    {/if}
                </div>
            {/if}
            </div>

            {if isset($product.color_list)}
                <div class="color-list-container">{$product.color_list}</div>
            {/if}
            {if (!$PS_CATALOG_MODE && $PS_STOCK_MANAGEMENT && ((isset($product.show_price) && $product.show_price) || (isset($product.available_for_order) && $product.available_for_order)))}
                {if isset($product.available_for_order) && $product.available_for_order && !isset($restricted_country_mode)}
                    <div class="availability">
                        {if ($product.allow_oosp || $product.quantity > 0)}
                            <span class="label {if $product.quantity <= 0 && isset($product.allow_oosp) && !$product.allow_oosp} label-danger{elseif $product.quantity <= 0} label-warning{else} label-success{/if}">
              {if $product.quantity <= 0}{if $product.allow_oosp}{if isset($product.available_later) && $product.available_later}{$product.available_later}{else}{l s='In Stock'}{/if}{else}{l s='Out of stock'}{/if}{else}{if isset($product.available_now) && $product.available_now}{$product.available_now}{else}{l s='In Stock'}{/if}{/if}
            </span>
                        {elseif (isset($product.quantity_all_versions) && $product.quantity_all_versions > 0)}
                            <span class="label label-warning">{l s='Product available with different options'}</span>
                        {else}
                            <span class="label label-danger">{l s='Out of stock'}</span>
                        {/if}
                    </div>
                {/if}
            {/if}
        </div>

    </div>
</article>

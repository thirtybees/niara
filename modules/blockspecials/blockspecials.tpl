<section>
    <div id="special_block_right" class="block">
        <h2 class="title_block section-title-column">
            <a href="{$link->getPageLink('prices-drop')|escape:'html':'UTF-8'}"
               title="{l s='Specials' mod='blockspecials'}">
                {l s='Specials' mod='blockspecials'}
            </a>
        </h2>
        <div class="block_content products-block">
            {if $special}
                <ul>
                    <li class="clearfix">
                        <article>
                            <a class="products-block-image" href="{$special.link|escape:'html':'UTF-8'}"
                               title="{$special.name|escape:'html':'UTF-8'}">
                              {if !empty($lazy_load)}
                                <noscript>
                                  <img src="{$link->getImageLink($special.link_rewrite, $special.id_image, 'small', null, ImageManager::retinaSupport())|escape:'html':'UTF-8'}"
                                       alt="{$special.legend|escape:'html':'UTF-8'}"
                                       title="{$special.name|escape:'html':'UTF-8'}"
                                       width="{getWidthSize|intval type='small'}"
                                       height="{getHeightSize|intval type='small'}"
                                  >
                                </noscript>
                              {/if}
                              <picture class="img-responsive{if !empty($lazy_load)} tb-lazy-image{/if}">
                                <!--[if IE 9]><video style="display: none;"><![endif]-->
                                {if !empty($webp)}
                                  <source {if !empty($lazy_load)}srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII= 1w" data-{/if}srcset="{$link->getImageLink($special.link_rewrite, $special.id_image, 'small', 'webp', ImageManager::retinaSupport())|escape:'html':'UTF-8'}"
                                          title="{$special.name|escape:'html':'UTF-8'}"
                                          type="image/webp"
                                  >
                                {/if}
                                <!--[if IE 9]></video><![endif]-->
                                <img {if !empty($lazy_load)}srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII= 1w" data-{/if}srcset="{$link->getImageLink($special.link_rewrite, $special.id_image, 'small', null, ImageManager::retinaSupport())|escape:'html':'UTF-8'}"
                                     {if !empty($lazy_load)}src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="{/if}
                                     alt="{$special.legend|escape:'html':'UTF-8'}"
                                     title="{$special.name|escape:'html':'UTF-8'}"
                                     width="{getWidthSize|intval type='small'}"
                                     height="{getHeightSize|intval type='small'}"
                                >
                              </picture>

                            </a>
                            <div class="product-content">
                                <h5 class="product-title">
                                    <a class="product-name" href="{$special.link|escape:'html':'UTF-8'}"
                                       title="{$special.name|escape:'html':'UTF-8'}">
                                        {$special.name|escape:'html':'UTF-8'}
                                    </a>
                                </h5>
                                {if isset($special.description_short) && $special.description_short}
                                    <p class="product-description">
                                        {$special.description_short|strip_tags:'UTF-8'|truncate:40}
                                    </p>
                                {/if}
                                <div class="price-box">
                                    {if !$PS_CATALOG_MODE}
                                        <span class="price special-price">
                  {if !$priceDisplay}
                      {displayWtPrice p=$special.price}{else}{displayWtPrice p=$special.price_tax_exc}
                  {/if}
                </span>
                                        {if $special.specific_prices}
                                            {assign var='specific_prices' value=$special.specific_prices}
                                            {if $specific_prices.reduction_type == 'percentage' && ($specific_prices.from == $specific_prices.to OR ($smarty.now|date_format:'%Y-%m-%d %H:%M:%S' <= $specific_prices.to && $smarty.now|date_format:'%Y-%m-%d %H:%M:%S' >= $specific_prices.from))}
                                                <span class="price-percent-reduction">-{$specific_prices.reduction*100|floatval}
                                                    %</span>
                                            {/if}
                                        {/if}
                                        <span class="old-price">
                  {if !$priceDisplay}
                      {displayWtPrice p=$special.price_without_reduction}{else}{displayWtPrice p=$priceWithoutReduction_tax_excl}
                  {/if}
                </span>
                                        {hook h="displayProductPriceBlock" product=$special type="price"}
										{if !empty($special.unity) && $special.unit_price_ratio > 0.000000}
										    {if !$priceDisplay}{assign var='productPrice' value=$special.price}{else}{assign var='productPrice' value=$special.price_tax_exc}{/if}
										    {math equation="pprice / punit_price" pprice=$productPrice  punit_price=$special.unit_price_ratio assign=unit_price}
											<p>
											    <small>{l s='Content:'} {$special.content_value|string_format:"%.2f"|replace:".":","|replace:".00":""|replace:",00":""} {$special.content_unit|escape:'html':'UTF-8'}</small>
											    <small>{convertPrice price=$unit_price} {l s='per'} {$special.unity|escape:'html':'UTF-8'}</small>
											</p>
										{/if}
                                    {/if}
                                </div>
                            </div>
                        </article>
                    </li>
                </ul>
                <div>
                    <a
                            class="btn btn-primary"
                            href="{$link->getPageLink('prices-drop')|escape:'html':'UTF-8'}"
                            title="{l s='All specials' mod='blockspecials'}">
                        <span>{l s='All specials' mod='blockspecials'}</span>
                    </a>
                </div>
            {else}
                <div>{l s='No special products at this time.' mod='blockspecials'}</div>
            {/if}
        </div>
    </div>
</section>

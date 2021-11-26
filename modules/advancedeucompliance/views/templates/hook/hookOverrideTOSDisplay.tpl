{**
 * 2007-2016 PrestaShop
 *
 * Thirty Bees is an extension to the PrestaShop e-commerce software developed by PrestaShop SA
 * Copyright (C) 2017-2018 thirty bees
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@thirtybees.com so we can send you a copy immediately.
 *
 * @author    Thirty Bees <modules@thirtybees.com>
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2017-2018 thirty bees
 * @copyright 2007-2016 PrestaShop SA
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 * PrestaShop is an internationally registered trademark & property of PrestaShop SA
 *}
<div class="row">
    <div class="col-xs-12 col-md-12">

        {if $has_tos_override_opt}
            <h2>{l s='Terms and Conditions' mod='advancedeucompliance'}</h2>
            <div class="tnc_box">
                <p class="checkbox">
                    {if isset($link_conditions) && $link_conditions && isset($link_revocations) && $link_revocations}
                        <label for="cgv">
                           <input type="checkbox" name="cgv" id="cgv" value="1" {if isset($checkedTOS) && $checkedTOS}checked="checked"{/if}/>
                            <span class="label-text">{l s='I agree to the [1]terms of service[/1] and to the [2]terms of revocation[/2] and will adhere to them unconditionally.' tags=['<a href="'|cat:{$link_conditions|escape:'html':'UTF-8'}|cat:'" class="iframe" rel="nofollow">','<a href="'|cat:{$link_revocations|escape:'html':'UTF-8'}|cat:'" class="iframe" rel="nofollow">'] mod='advancedeucompliance'}</span>
                        </label>
                    {else}
                        <label for="cgv">
                            <input type="checkbox" name="cgv" id="cgv" value="1" {if isset($checkedTOS) && $checkedTOS}checked="checked"{/if}/>
                            <span class="label-text">{l s='I agree to the terms of service and to the terms of revocation and will adhere to them unconditionally' mod='advancedeucompliance'}</span>
                        </label>
                    {/if}
                </p>
            </div>
        {else}
            <h2>{l s='Terms and Conditions' mod='advancedeucompliance'}</h2>
            <div class="box">
                <p class="checkbox">
                    {if isset($link_conditions) && $link_conditions}
                        <label for="cgv">
                            <input type="checkbox" name="cgv" id="cgv" value="1" {if $checkedTOS}checked="checked"{/if} />
                            <span class="label-text">{l s='I agree to the terms of service and will adhere to them unconditionally. [1](Read the Terms of Service)[/1].' tags=['<a href="'|cat:{$link_conditions|escape:'html':'UTF-8'}|cat:'" class="iframe" rel="nofollow">'] mod='advancedeucompliance'}</span>
                        </label>
                    {else}
                        <label for="cgv">
                            <input type="checkbox" name="cgv" id="cgv" value="1" {if $checkedTOS}checked="checked"{/if} />
                            <span class="label-text">{l s='I agree to the terms of service and to the terms of revocation and will adhere to them unconditionally' mod='advancedeucompliance'}</span>
                        </label>
                    {/if}
                </p>
            </div>
        {/if}


        {if $has_virtual_product}
            <div class="tnc_box">
                <p class="checkbox">
                    <label for="revocation_vp_terms_agreed">
                        <input type="checkbox" name="revocation_vp_terms_agreed" id="revocation_vp_terms_agreed" value="1"/>
                        <span class="label-text">{l s='I agree that the digital products in my cart can not be returned or refunded due to the nature of such products.' mod='advancedeucompliance'}</span>
                    </label>
                </p>
            </div>
        {/if}

    </div>
</div>

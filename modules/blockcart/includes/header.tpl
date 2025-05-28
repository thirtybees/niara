<a id="blockcart-header" href="{$link->getPageLink($order_process, true)|escape:'html':'UTF-8'}" title="{l s='View my shopping cart' mod='blockcart'}" rel="nofollow">
  <span class="ajax_cart_icon">&#xf291;</span>
  <span class="ajax_cart_quantity">{$cart_qties}</span>
  <b>{l s='My Cart' mod='blockcart'}</b>
  <span class="ajax_cart_product_txt"{if $cart_qties != 1} style="display: none;"{/if}>{l s='Product' mod='blockcart'}</span>
  <span class="ajax_cart_product_txt_s"{if $cart_qties < 2} style="display: none;"{/if}>{l s='Products' mod='blockcart'}</span>
  <span class="ajax_cart_total"{if $cart_qties == 0} style="display: none;"{/if}>
    {if $cart_qties > 0}
      {if $priceDisplay == 1}
        {assign var='blockcart_cart_flag' value='Cart::BOTH_WITHOUT_SHIPPING'|constant}
        {convertPrice price=$cart->getOrderTotal(false, $blockcart_cart_flag)}
      {else}
        {assign var='blockcart_cart_flag' value='Cart::BOTH_WITHOUT_SHIPPING'|constant}
        {convertPrice price=$cart->getOrderTotal(true, $blockcart_cart_flag)}
      {/if}
    {/if}
  </span>
  <span class="ajax_cart_no_product"{if $cart_qties > 0} style="display: none;"{/if}>{l s='(empty)' mod='blockcart'}</span>
</a>

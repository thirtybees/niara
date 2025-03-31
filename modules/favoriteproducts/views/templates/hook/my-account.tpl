<li class="favoriteproducts">
  <a
    href="{$link->getModuleLink('favoriteproducts', 'account', [], true)|escape:'html':'UTF-8'}"
    title="{l s='My favorite products.' mod='favoriteproducts'}">
    {if !$in_footer}
      <i class="far fa-heart"></i>
      <span>{l s='My favorite products' mod='favoriteproducts'}</span>
    {else}
      {l s='My favorite products' mod='favoriteproducts'}
    {/if}
  </a>
</li>

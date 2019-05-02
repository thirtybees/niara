<div class="tm-home col-xs-12">
{if isset($products) && $products}
  <div class="tm-hp text-center">
    <h2><span class="tm-over">{l s='Our' mod='homefeatured'} <span>{l s='featured' mod='homefeatured'}</span> {l s='products' mod='homefeatured'}</span></h2>
    <p>{l s='The best selection for top prices.' mod='homefeatured'}</p>
  </div>
  {include file="$tpl_dir./product-list.tpl" class='homefeatured' id='homefeatured'}
{else}
  <ul id="homefeatured" class="homefeatured">
    <li class="alert alert-info">{l s='No featured products at this time.' mod='homefeatured'}</li>
  </ul>
{/if}
</div>

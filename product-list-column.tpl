{if !empty($products)}


  {$show_functional_buttons = $page_name != 'index'}

  {strip}
  <ul{if !empty($id)} id="{$id}"{/if} class="product_list_column{if !empty($class)} {$class}{/if}">

    {foreach from=$products item=product}
      <li class="ajax_block_product">
        {include file='./product-list-item.tpl' product=$product show_functional_buttons=false}
      </li>
    {/foreach}

  </ul>
  {/strip}
  
  {addJsDefL name=min_item}{l s='Please select at least one product' js=1}{/addJsDefL}
  {addJsDefL name=max_item}{l s='You cannot add more than %d product(s) to the product comparison' sprintf=$comparator_max_item js=1}{/addJsDefL}
  {addJsDef comparator_max_item=$comparator_max_item}
  {addJsDef comparedProductsIds=$compared_products}
{/if}

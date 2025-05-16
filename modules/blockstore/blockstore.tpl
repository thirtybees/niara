<section>
    <div id="stores_block_left" class="block">
        <h2 class="title_block section-title-column">
            <a href="{$link->getPageLink('stores')|escape:'html':'UTF-8'}" title="{l s='Our stores' mod='blockstore'}">
                {l s='Our stores' mod='blockstore'}
            </a>
        </h2>
        <div class="block_content blockstore">
            <p class="store_image">
                <a href="{$link->getPageLink('stores')|escape:'html':'UTF-8'}"
                   title="{l s='Our stores' mod='blockstore'}">
                    <img class="img-responsive"
                         src="{$link->getMediaLink("`$module_dir``$store_img|escape:'htmlall':'UTF-8'`")}"
                         alt="{l s='Our stores' mod='blockstore'}" title="{l s='Our stores' mod='blockstore'}">
                </a>
            </p>
            {if !empty($store_text)}
                <p class="store-description">
                    {$store_text}
                </p>
            {/if}
            <div>
                <a
                        class="btn btn-primary"
                        href="{$link->getPageLink('stores')|escape:'html':'UTF-8'}"
                        title="{l s='Our stores' mod='blockstore'}">
                    <span>{l s='Discover our stores' mod='blockstore'} <i class="fas fa-chevron-right"></i></span>
                </a>
            </div>
        </div>
    </div>
</section>
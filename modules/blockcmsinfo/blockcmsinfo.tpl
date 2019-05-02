{if !empty($infos)}
    <div class="cmsinfo-wrap col-xs-12">
       {foreach from=$infos item=info}
        <article>
          <div id="blockcmsinfo-{$info.id_info|escape:'html':'UTF-8'}" class="blockcmsinfo-block col-xs-12 col-sm-3">
            {$info.text}
          </div>
        </article>
      {/foreach}
    </div>
{/if}

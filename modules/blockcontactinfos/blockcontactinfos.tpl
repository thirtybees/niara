<section id="blockcontactinfos" class="col-xs-12 col-sm-3">
  <h2 class="footer-title section-title-footer">{l s='Store Information' mod='blockcontactinfos'}</h2>
  <address>
    <ul class="list-unstyled">
      {if !empty($blockcontactinfos_company)}
        <li>
          <b>{$blockcontactinfos_company|escape:'html':'UTF-8'}</b>
        </li>
      {/if}
      {if !empty($blockcontactinfos_address)}
        <li>
          {$blockcontactinfos_address|escape:'html':'UTF-8'|nl2br}
        </li>
      {/if}
      {if !empty($blockcontactinfos_phone)}
        <li>
          <i class="fas fa-phone"></i>
          <a href="tel:{$blockcontactinfos_phone|escape:'html':'UTF-8'}">{$blockcontactinfos_phone|escape:'html':'UTF-8'}</a>
        </li>
      {/if}
      {if !empty($blockcontactinfos_email)}
        <li>
          <i class="far fa-envelope"></i>
          {mailto address=$blockcontactinfos_email|escape:'html':'UTF-8' encode="hex"}
        </li>
      {/if}
    </ul>
  </address>
</section>

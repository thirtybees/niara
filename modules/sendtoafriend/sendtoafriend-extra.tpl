<li class="sendtofriend">
  <a id="send_friend_button" href="#send_friend_form">
    <i class="far fa-envelope fa-fw"></i> {l s='Send to a friend' mod='sendtoafriend'}
  </a>

  <div style="display: none;">
    <div id="send_friend_form">
      <h2  class="page-subheading">{l s='Send to a friend' mod='sendtoafriend'}</h2>
      <div class="row">

        <div class="product clearfix col-xs-12 col-sm-6">
          <div class="thumbnail" style="width: {$homeSize.width|intval}px; height: {$homeSize.height|intval}px">
            {if !empty($lazy_load)}
              <noscript>
                <img src="{$link->getImageLink($stf_product->link_rewrite, $stf_product_cover, 'home', null, ImageManager::retinaSupport())|escape:'html':'UTF-8'}"
                     alt="{$stf_product->name|escape:'html':'UTF-8'}"
                     width="{getWidthSize|intval type='home'}"
                     height="{getHeightSize|intval type='home'}"
                >
              </noscript>
            {/if}
            <picture class="img-responsive{if !empty($lazy_load)}tb-lazy-image{/if}" style="width: {$homeSize.width|intval}px; height: {$homeSize.height|intval}px">
              <!--[if IE 9]><video style="display: none;"><![endif]-->
              {if !empty($webp)}
                <source {if !empty($lazy_load)}srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII= 1w" data-{/if}srcset="{$link->getImageLink($stf_product->link_rewrite, $stf_product_cover, 'home', 'webp', ImageManager::retinaSupport())|escape:'html':'UTF-8'}"
                        type="image/webp"
                >
              {/if}
              <!--[if IE 9]></video><![endif]-->
              <img {if !empty($lazy_load)}srcset="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII= 1w" data-{/if}srcset="{$link->getImageLink($stf_product->link_rewrite, $stf_product_cover, 'home', null, ImageManager::retinaSupport())|escape:'html':'UTF-8'}"
                   {if !empty($lazy_load)}src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="{/if}
                   alt="{$stf_product->name|escape:'html':'UTF-8'}"
                   width="{getWidthSize|intval type='home'}"
                   height="{getHeightSize|intval type='home'}"
              >
            </picture>
          </div>
          <h5><b>{$stf_product->name}</b></h5>
          <p>{$stf_product->description_short}</p>
        </div>

        <div class="send_friend_form_content col-xs-12 col-sm-6" id="send_friend_form_content">
          <div id="send_friend_form_error" class="alert alert-danger" style="display: none;"></div>
          <h5>{l s='Recipient' mod='sendtoafriend'}</h5>
          <div class="form-group">
            <label for="friend_name">
              {l s='Name of your friend' mod='sendtoafriend'} <sup class="required">*</sup> :
            </label>
            <input id="friend_name" class="form-control" name="friend_name" type="text" value="" required>
          </div>
          <div class="form-group">
            <label for="friend_email">
              {l s='E-mail address of your friend' mod='sendtoafriend'} <sup class="required">*</sup> :
            </label>
            <input id="friend_email" class="form-control" name="friend_email" type="email" value="" required>
          </div>
          <div class="form-group">
            <div class="help-block">
              <sup class="required">*</sup> {l s='Required fields' mod='sendtoafriend'}
            </div>
          </div>
          <button id="sendEmail" class="btn btn-primary" name="sendEmail" type="submit">{l s='Send' mod='sendtoafriend'}</button>
          <a class="closefb btn btn-link" href="#">{l s='Cancel' mod='sendtoafriend'}</a>
        </div>
      </div>
    </div>
  </div>

</li>

{addJsDef stf_secure_key=$stf_secure_key}
{addJsDefL name=stf_msg_success}{l s='Your e-mail has been sent successfully' mod='sendtoafriend' js=1}{/addJsDefL}
{addJsDefL name=stf_msg_error}{l s='Your e-mail could not be sent. Please check the e-mail address and try again.' mod='sendtoafriend' js=1}{/addJsDefL}
{addJsDefL name=stf_msg_title}{l s='Send to a friend' mod='sendtoafriend' js=1}{/addJsDefL}
{addJsDefL name=stf_msg_required}{l s='You did not fill required fields' mod='sendtoafriend' js=1}{/addJsDefL}

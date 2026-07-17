{**
 * Copyright (C) 2017-2024 thirty bees
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@thirtybees.com so we can send you a copy immediately.
 *
 * @author    thirty bees <modules@thirtybees.com>
 * @copyright 2017-2024 thirty bees
 * @license   Academic Free License (AFL 3.0)
 *}
{if !empty($beesblogPopularPostsPosts)}
	<section id="beesblog_home" class="popularhome-block col-xs-12">
		<div class="tm-hp text-center">
			<h2>
				<a href="{$beesblogPopularPostsBlogUrl|escape:'htmlall':'UTF-8'}" title="{l s='Popular posts' mod='beesblogpopularposts'}">
					<span class="tm-over">{l s='Popular [1]Blog[/1] posts' tags=['<span>'] mod='beesblogpopularposts'}</span>
				</a>
			</h2>
			<p>{l s='Read popular posts from our blog.' mod='beesblogpopularposts'}</p>
		</div>
		<div class="row">
			{foreach $beesblogPopularPostsPosts as $post}
				<article>
					<div class="col-xs-12 col-md-4">
						<div class="beesblogpopularpostshome-content">
								<a href="{$post->link|escape:'htmlall':'UTF-8'}" title="{$post->title|escape:'htmlall':'UTF-8'}">
									{assign var=imagePath value=Media::getMediaPath(BeesBlog::getPostImagePath($post->id))}
									{if ($imagePath)}
										<img class="img-responsive" src="{$link->getMediaLink($imagePath)|escape:'htmlall':'UTF-8'}" title="{$post->title|escape:'htmlall':'UTF-8'}" />
									{/if}
								</a>
							<h5>
								<a class="beesblogpopularpostshome-title" href="{$post->link|escape:'htmlall':'UTF-8'}" title="{$post->title|escape:'htmlall':'UTF-8'}">
									{$post->title|escape:'htmlall':'UTF-8'}
								</a>
								<span>
									<i class="icon icon-time"></i> {$post->published|date_format}
									<i class="icon icon-eye"></i> {$post->viewed|intval}
								</span>
							</h5>
							<p>{$post->content|strip_tags|truncate:'150'}</p>

							<p><a class="btn btn-primary" href="{$post->link|escape:'htmlall':'UTF-8'}" title="{$post->title|escape:'htmlall':'UTF-8'}">{l s='Read More' mod='beesblogpopularposts'}</a></p>
						</div>
					</div>
				</article>
			{/foreach}
		</div>
	</section>
{/if}

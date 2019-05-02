{if isset($disqusUsername) && $disqusUsername}
    <div id="disqus_thread"></div>
    <script>
      /**
       * RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
       * LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
       */
      var disqus_config = function () {
        this.page.url = '{$postPath|escape:'javascript':'UTF-8'}'; // Replace PAGE_URL with your page's canonical URL variable
        this.page.identifier = '{'blog-'|cat:Context::getContext()->language->iso_code|strtolower|cat:'-'|cat:$post->id|intval}'; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
      };

      (function () { // DON'T EDIT BELOW THIS LINE
        var d = document, s = d.createElement('script');

        s.src = '//{$disqusUsername|escape:'javascript':'UTF-8'}.disqus.com/embed.js';

        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
      })();
    </script>
    <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>
{/if}

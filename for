<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>گو با مثال: For</title>
    <link rel="stylesheet" href="site.css">
    <link href="https://cdn.jsdelivr.net/gh/rastikerdar/vazirmatn@v33.003/Vazirmatn-font-face.css" rel="stylesheet" type="text/css" />

</head>
<script>
    window.onkeydown = (e) => {
        if (e.ctrlKey || e.altKey || e.shiftKey) {
            return;
        }
        
        if (e.key == "ArrowLeft") {
            window.location.href = 'constants';
        }
        
        
        if (e.key == "ArrowRight") {
            window.location.href = 'if-else';
        }
        
    }
</script>
<body dir="rtl">
<div class="example" id="for">
    <h2><a href="./">گو با مثال</a>: For</h2>
    
    <table>
        
        <tr>
            <td class="docs">
                <p><code>for</code> تنها ساختار حلقه در Go است. اینجا چند نوع
ساده از حلقه‌های <code>for</code> داریم.</p>

            </td>
            <td  class="code empty leading">
                
                
            </td>
        </tr>
        
        <tr>
            <td class="docs">
                
            </td>
            <td  class="code leading">
                <a href="https://go.dev/play/p/VfnREXPXfna"><img title="اجرای کد" src="play.png" class="run" /></a><img title="کپی کد" src="clipboard.png" class="copy" />
                <html><head></head><body><pre class="chroma"><code><span class="line"><span class="cl"><span class="kn">package</span> <span class="nx">main</span></span></span></code></pre></body></html>
            </td>
        </tr>
        
        <tr>
            <td class="docs">
                
            </td>
            <td  class="code leading">
                
                <html><head></head><body><pre class="chroma"><code><span class="line"><span class="cl"><span class="kn">import</span> <span class="s">&#34;fmt&#34;</span></span></span></code></pre></body></html>
            </td>
        </tr>
        
        <tr>
            <td class="docs">
                
            </td>
            <td  class="code leading">
                
                <html><head></head><body><pre class="chroma"><code><span class="line"><span class="cl"><span class="kd">func</span> <span class="nf">main</span><span class="p">()</span> <span class="p">{</span></span></span></code></pre></body></html>
            </td>
        </tr>
        
        <tr>
            <td class="docs">
                <p>ساده‌ترین نوع، با یک شرط.</p>

            </td>
            <td  class="code leading">
                
                <html><head></head><body><pre class="chroma"><code><span class="line"><span class="cl">    <span class="nx">i</span> <span class="o">:=</span> <span class="mi">1</span>
</span></span><span class="line"><span class="cl">    <span class="k">for</span> <span class="nx">i</span> <span class="o">&lt;=</span> <span class="mi">3</span> <span class="p">{</span>
</span></span><span class="line"><span class="cl">        <span class="nx">fmt</span><span class="p">.</span><span class="nf">Println</span><span class="p">(</span><span class="nx">i</span><span class="p">)</span>
</span></span><span class="line"><span class="cl">        <span class="nx">i</span> <span class="p">=</span> <span class="nx">i</span> <span class="o">+</span> <span class="mi">1</span>
</span></span><span class="line"><span class="cl">    <span class="p">}</span></span></span></code></pre></body></html>
            </td>
        </tr>
        
        <tr>
            <td class="docs">
                <p>یک حلقه کلاسیک با مقداردهی اولیه، شرط و
مقداردهی بعدی.</p>

            </td>
            <td  class="code leading">
                
                <html><head></head><body><pre class="chroma"><code><span class="line"><span class="cl">    <span class="k">for</span> <span class="nx">j</span> <span class="o">:=</span> <span class="mi">0</span><span class="p">;</span> <span class="nx">j</span> <span class="p">&lt;</span> <span class="mi">3</span><span class="p">;</span> <span class="nx">j</span><span class="o">++</span> <span class="p">{</span>
</span></span><span class="line"><span class="cl">        <span class="nx">fmt</span><span class="p">.</span><span class="nf">Println</span><span class="p">(</span><span class="nx">j</span><span class="p">)</span>
</span></span><span class="line"><span class="cl">    <span class="p">}</span></span></span></code></pre></body></html>
            </td>
        </tr>
        
        <tr>
            <td class="docs">
                <p>روش دیگر برای انجام تکرار &ldquo;N بار انجام بده&rdquo;
استفاده از <code>range</code> روی یک عدد صحیح است.</p>

            </td>
            <td  class="code leading">
                
                <html><head></head><body><pre class="chroma"><code><span class="line"><span class="cl">    <span class="k">for</span> <span class="nx">i</span> <span class="o">:=</span> <span class="k">range</span> <span class="mi">3</span> <span class="p">{</span>
</span></span><span class="line"><span class="cl">        <span class="nx">fmt</span><span class="p">.</span><span class="nf">Println</span><span class="p">(</span><span class="s">&#34;range&#34;</span><span class="p">,</span> <span class="nx">i</span><span class="p">)</span>
</span></span><span class="line"><span class="cl">    <span class="p">}</span></span></span></code></pre></body></html>
            </td>
        </tr>
        
        <tr>
            <td class="docs">
                <p><code>for</code> بدون شرط به طور مکرر حلقه می‌زند تا
وقتی که با <code>break</code> از حلقه خارج بشین یا
با <code>return</code> از تابع خارج بشین.</p>

            </td>
            <td  class="code leading">
                
                <html><head></head><body><pre class="chroma"><code><span class="line"><span class="cl">    <span class="k">for</span> <span class="p">{</span>
</span></span><span class="line"><span class="cl">        <span class="nx">fmt</span><span class="p">.</span><span class="nf">Println</span><span class="p">(</span><span class="s">&#34;loop&#34;</span><span class="p">)</span>
</span></span><span class="line"><span class="cl">        <span class="k">break</span>
</span></span><span class="line"><span class="cl">    <span class="p">}</span></span></span></code></pre></body></html>
            </td>
        </tr>
        
        <tr>
            <td class="docs">
                <p>می‌تونین با <code>continue</code> به تکرار بعدی حلقه
برین.</p>

            </td>
            <td  class="code">
                
                <html><head></head><body><pre class="chroma"><code><span class="line"><span class="cl">    <span class="k">for</span> <span class="nx">n</span> <span class="o">:=</span> <span class="k">range</span> <span class="mi">6</span> <span class="p">{</span>
</span></span><span class="line"><span class="cl">        <span class="k">if</span> <span class="nx">n</span><span class="o">%</span><span class="mi">2</span> <span class="o">==</span> <span class="mi">0</span> <span class="p">{</span>
</span></span><span class="line"><span class="cl">            <span class="k">continue</span>
</span></span><span class="line"><span class="cl">        <span class="p">}</span>
</span></span><span class="line"><span class="cl">        <span class="nx">fmt</span><span class="p">.</span><span class="nf">Println</span><span class="p">(</span><span class="nx">n</span><span class="p">)</span>
</span></span><span class="line"><span class="cl">    <span class="p">}</span>
</span></span><span class="line"><span class="cl"><span class="p">}</span></span></span></code></pre></body></html>
            </td>
        </tr>
        
    </table>
    
    <table>
        
        <tr>
            <td class="docs">
                
            </td>
            <td  class="code leading">
                
                <html><head></head><body><pre class="chroma"><code><span class="line"><span class="cl"><span class="gp">$</span> go run for.go
</span></span><span class="line"><span class="cl"><span class="go">1
</span></span></span><span class="line"><span class="cl"><span class="go">2
</span></span></span><span class="line"><span class="cl"><span class="go">3
</span></span></span><span class="line"><span class="cl"><span class="go">0
</span></span></span><span class="line"><span class="cl"><span class="go">1
</span></span></span><span class="line"><span class="cl"><span class="go">2
</span></span></span><span class="line"><span class="cl"><span class="go">range 0
</span></span></span><span class="line"><span class="cl"><span class="go">range 1
</span></span></span><span class="line"><span class="cl"><span class="go">range 2
</span></span></span><span class="line"><span class="cl"><span class="go">loop
</span></span></span><span class="line"><span class="cl"><span class="go">1
</span></span></span><span class="line"><span class="cl"><span class="go">3
</span></span></span><span class="line"><span class="cl"><span class="go">5</span></span></span></code></pre></body></html>
            </td>
        </tr>
        
        <tr>
            <td class="docs">
                <p>وقتی که به دستورات <code>range</code>، چنل‌ها و ساختارهای
داده دیگه نگاه کنیم با شکل‌های دیگه‌ای از
<code>for</code> آشنا می‌شیم.</p>

            </td>
            <td  class="code empty">
                
                
            </td>
        </tr>
        
    </table>
    
    
    <p class="next">
        مثال بعدی: <a href="if-else">If/Else</a>.
    </p>
    
    
<p class="footer">
    توسط <a href="https://markmcgranaghan.com">مارک مک‌گراناگان</a> و <a href="https://eli.thegreenplace.net">الی بندرسکی</a> | <a href="https://github.com/mmcgrana/gobyexample">سورس</a> | <a href="https://github.com/mmcgrana/gobyexample#license">لایسنس</a>
</p>

</div>
<script>
    var codeLines = [];
    codeLines.push('');codeLines.push('package main\u000A');codeLines.push('import \"fmt\"\u000A');codeLines.push('func main() {\u000A');codeLines.push('    i :\u003D 1\u000A    for i \u003C\u003D 3 {\u000A        fmt.Println(i)\u000A        i \u003D i + 1\u000A    }\u000A');codeLines.push('    for j :\u003D 0; j \u003C 3; j++ {\u000A        fmt.Println(j)\u000A    }\u000A');codeLines.push('    for i :\u003D range 3 {\u000A        fmt.Println(\"range\", i)\u000A    }\u000A');codeLines.push('    for {\u000A        fmt.Println(\"loop\")\u000A        break\u000A    }\u000A');codeLines.push('    for n :\u003D range 6 {\u000A        if n%2 \u003D\u003D 0 {\u000A            continue\u000A        }\u000A        fmt.Println(n)\u000A    }\u000A}\u000A');codeLines.push('');codeLines.push('');
</script>
<script src="site.js" async></script>
</body>
</html>
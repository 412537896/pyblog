<#include "layout/layout.ftl">
<@html title="Home - " + _site.title page_tab="home">
  <#if _site.page>
    <#list page.list as blog>
    <div class="panel panle-default">
      <div class="panel-body">
        <h2 style="margin-top:0;"><a href="${blog.url!}index.html">${blog.title!}</a></h2>
        <p>
          <#if blog.date??>
            <span class="glyphicon glyphicon-calendar"></span> ${blog.date?string["yyyy-MM-dd"]}
          </#if>
          <#if blog.author??>
            <span class="glyphicon glyphicon-user"></span> ${blog.author!}
          </#if>
          <#if blog.categories??>
            <span class="glyphicon glyphicon-list"></span>
            <#list blog.categories as category>
              <span class="label label-default">
                <a href="/category/${category}/index.html">${category!}</a>
              </span>&nbsp;
            </#list>
          </#if>
          <#if blog.tags??>
            <span class="glyphicon glyphicon-tags"></span>
            <#list blog.tags as tag>
              <span class="label label-primary">
                <a href="/tag/${tag}/index.html">${tag!}</a>
              </span>&nbsp;
            </#list>
          </#if>
        </p>
        <p>${markdown.pegDown(blog.excerpt)}</p>
      </div>
    </div>
    </#list>
    <#include "layout/paginate.ftl"/>
    <@paginate currentPage=page.pageNo totalPage=page.totalPage actionUrl="/"/>
  <#else>
    <#list blogs as blog>
    <div class="panel panle-default">
      <div class="panel-body">
        <h2 style="margin-top:0;"><a href="${blog.url!}index.html">${blog.title!}</a></h2>
        <p>
          <#if blog.date??>
            <span class="glyphicon glyphicon-calendar"></span> ${blog.date?string["yyyy-MM-dd"]}
          </#if>
          <#if blog.author??>
            <span class="glyphicon glyphicon-user"></span> ${blog.author!}
          </#if>
          <#if blog.categories??>
            <span class="glyphicon glyphicon-list"></span>
            <#list blog.categories as category>
              <span class="label label-default">
                <a href="/category/${category}/index.html">${category!}</a>
              </span>&nbsp;
            </#list>
          </#if>
          <#if blog.tags??>
            <span class="glyphicon glyphicon-tags"></span>
            <#list blog.tags as tag>
              <span class="label label-primary">
                <a href="/tag/${tag}/index.html">${tag!}</a>
              </span>&nbsp;
            </#list>
          </#if>
        </p>
        <p>${markdown.pegDown(blog.excerpt)}</p>
      </div>
    </div>
    </#list>
  </#if>
</@html>
---
layout: default
title: Publications
permalink: /publications/
---

<div id="main" class="site-main">
  <div id="main-content" class="single-page-content">
    <div id="primary" class="content-area">

      <div class="page-title">
        <h1>{{ site.data.pageconfig.publications.config.page.title }}</h1>
        <div class="page-subtitle">
            <h4>{{ site.data.pageconfig.publications.config.page.subtitle }}</h4>
        </div>
      </div>

      <div id="content" class="page-content site-content single-post" role="main">
        
        <!-- BEGIN: Videos -->
        <div class="row">
          <div class=" col-xs-12 col-sm-12 ">
            <!-- Portfolio Content -->
            <div id="portfolio_content_q" class="portfolio-content">
              <a name="videos" style="visibility: hidden;"></a>
              <div class="block-title">
                <h2>Videos</h2>
              </div>
              <ul class="portfolio-filters">
                {% assign config = site.data.pageconfig.publications.config %}
                {% assign categories = config.categories | where: 'enabled', 'true' %}
                {% for category in categories %}
                {% if forloop.first == true %}
                <li class="active">
                {% else %}
                <li>
                {% endif %}
                  <a class="filter btn btn-sm btn-link" data-group="{{ category.data_group }}">{{ category.name }}</a>
                </li>
                {% endfor %}
              </ul>

              <!-- Portfolio Grid (can be three-columns, four-columns, etc -->
              <div class="portfolio-grid four-columns shuffle">
                <!-- Sort by video date ASC -->
                {% assign videos = site.data.pageconfig.publications.content.videos | sort: 'date' %}
                {% assign params = site.data.pageconfig.publications.config.item_types.video.youtube %}

                {% for video in videos %}
                {% if video.enabled %}
                <figure class="item {{ params.classes.item }}" data-groups='["all", "{{ video.category.slug }}"]'>
                  <div class="portfolio-item-img">
                    {% assign vid = video.url | split:'/' | last %}
                    {% if video.lowres_thumbnail %}
                    <img src="{{ config.youtube.thumbnail_url.prefix }}{{ vid }}{{ config.youtube.thumbnail_url.lowres_suffix }}" alt="{{ video.name }}" title="" />
                    {% else %}
                    <img src="{{ config.youtube.thumbnail_url.prefix }}{{ vid }}{{ config.youtube.thumbnail_url.maxres_suffix }}" alt="{{ video.name }}" title="" />
                    {% endif %}
                    <a href="{{ config.youtube.embed_prefix }}{{ vid }}?quality=high" class="{{ params.classes.link }}"></a>
                  </div>

                  <i class="{{ params.classes.fa }}"></i>
                  <h4 class="name">{{ video.name }}</h4>
                  <span class="category">{{ video.category.text }}</span>
                </figure>
                {% endif %}
                {% endfor %}
              </div>
              <!-- /Portfolio Content -->
            </div>
          </div>
        </div>
        <!-- END: Videos -->

        <div class="row">
          <div class=" col-xs-12 col-sm-12 ">
            <div class="p-50"></div>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
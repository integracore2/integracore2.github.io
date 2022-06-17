---
layout: default
title: Innovations
permalink: /innovations/
---

<div id="main" class="site-main">
  <div id="main-content" class="single-page-content">
    <div id="primary" class="content-area">

      <div class="page-title">
        <h1>{{ site.data.pageconfig.innovations.config.page.title }}</h1>
        <div class="page-subtitle">
            <h4>{{ site.data.pageconfig.innovations.config.page.subtitle }}</h4>
        </div>
      </div>

      <div id="content" class="page-content site-content single-post" role="main">
        
        <!-- BEGIN: Videos -->
        <div class="row">
          <div class=" col-xs-12 col-sm-12 ">
            <!-- Portfolio Content -->
            <div id="portfolio_content_q" class="portfolio-content">
              <!-- <a name="videos" style="visibility: hidden;"></a> -->
              <div class="block-title">
                <h2>Systematic Trading Strategy Portfolios</h2>
              </div>
              <ul class="portfolio-filters">
                {% assign config = site.data.pageconfig.innovations.config %}
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
              <div class="portfolio-grid three-columns shuffle">
                <!-- Sort by video date ASC -->
                {% assign strategies = site.data.pageconfig.innovations.content.strategies | sort: 'date' %}
                {% assign params = site.data.pageconfig.publications.config.item_types.direct_url %}

                {% for strategy in strategies %}
                {% if strategy.enabled %}
                <figure class="item {{ params.classes.item }}" data-groups='["all", "{{ strategy.category.slug }}"]'>
                  <div class="portfolio-item-img">
                    <img src="{{ site.baseurl | append: strategy.image_url }}" alt="{{ strategy.name }}" title="" />
                    <a href="{{ strategy.url }}" target="_blank" class="{{ params.classes.link }}"></a>
                  </div>

                  <i class="{{ params.classes.fa }}"></i>
                  <h4 class="name">{{ strategy.name }}</h4>
                  <span class="category">{{ strategy.category.text }}</span>
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
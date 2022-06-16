---
layout: default
permalink: /
---

<div id="main" class="site-main">
  <div id="main-content" class="single-page-content">
    <div id="primary" class="content-area">    
      <div id="content" class="page-content site-content single-post" role="main">
        <!-- Home Page Top Part -->
        <div class="row">
          <div class=" col-xs-12 col-sm-12">
            <div class="home-content">
              <div class="row flex-v-align">
                
                <div class="col-sm-12 col-md-5 col-lg-5">
                  <div class="home-photo">
                    <div class="hp-inner" style="background-image: url(./assets/img/ali-saif-profile-pic-400x400.jpg);">
                    </div>
                  </div>
                </div>

                <div class="col-sm-12 col-md-7 col-lg-7">
                  <div class="home-text hp-left">
                    <div class="owl-carousel text-rotation">  

                      {% for role in site.author.roles %} 
                        <div class="item">
                          <h4>{{ role }}</h4>
                        </div>
                      {% endfor %}
                    
                    </div>
                      
                    <h1>{{ site.author.name }}</h1>
                    <p align="justify">{{ site.author.bio2 }}</p>
                          
                    <div class="home-buttons">
                      <a href="{{ site.author.linkedin }}" target="_blank" class="btn btn-primary">Connect on LinkedIn</a>
                      <a href="/contact/" target="_self" class="btn btn-secondary">How can I help you?</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Home Page Top Part -->

        {% if site.data.pageconfig.index.services_enabled %}
        <!-- Services -->
        <div class="row">
          <div class="col-xs-12 col-sm-12">
            <div class="p-50"></div>

            <div class="block-title">
              <h2>{{ site.data.pageconfig.index.services_title }}</h2>
            </div>
          </div>
        </div>

        <div class="row">
          {% for block in site.data.pageconfig.index.services %}
            <div class="col-xs-12 col-sm-6">
              <div class="info-list-w-icon">
              {% for item in block[1] %}
                <div class="info-block-w-icon">
                  <div class="ci-icon">
                    <i class="linecons linecons-{{ item[1].icon }}"></i>
                  </div>

                  <div class="ci-text">
                    <h4>{{ item[1].title }}</h4>
                    <p align="justify">{{ item[1].description }}</p>
                  </div>
                </div>
              {% endfor %}
              </div>
            </div>
          {% endfor %}
        </div>
        <!-- /Services -->
        {% endif %}

        {% if site.data.pageconfig.index.recommendations_enabled %}
        <div class="row">
          <div class="col-xs-12 col-sm-12">
            <div class="p-20"></div>

            <!-- Testimonials -->
            <div class="block-title">
              <h2>{{ site.data.pageconfig.index.recommendations_title }}</h2>
            </div>

            <div id="testimonials_1" class="testimonials owl-carousel" data-mobile-items="1" data-tablet-items="7" data-items="7">

              {% for person in site.data.linkedin.recommendations %}
                
                <!-- TEST TESTIMONIAL -->
                <div class="testimonial-item">
                  <!-- Testimonial Content -->
                  <div class="testimonial-content">
                    <!-- Picture -->
                    <div class="testimonial-picture">
                      <img src="{{ site.data.linkedin.config.image_repo }}{{ person[1].image }}" alt="{{ person[1].name }}"/>
                    </div>              
                    <!-- /Picture -->

                    <!-- Testimonial Text -->
                    <div class="testimonial-text">
                      <p>{{ person[1].recommendation }}</p>
                    </div>
                    <!-- /Testimonial Text -->

                    <!-- Testimonial author information -->
                    <div class="testimonial-author-info">
                      <h5 class="testimonial-author"><a href="{{ person[1].url }}" target="_blank">{{ person[1].name }}</a></h5>
                      <p class="testimonial-firm">{{ person[1].role }}</p>
                    </div>
                    <!-- /Testimonial author information -->

                    <div class="testimonial-icon">
                      <i class="fa fa-quote-left"></i>
                    </div>

                    <div class="testimonial-icon-big">
                      <i class="fa fa-quote-right"></i>
                    </div>
                  </div>
                  <!-- /Testimonial Content -->
                </div>
                <!-- END OF TEST TESTIMONIAL -->
                
              {% endfor %}
              
            </div>
            <!-- /Testimonials -->
            {% endif %}

            <div class="p-40"></div>
            
            <!-- Clients Slider -->
            <div class="block-title">
              <h2>{{ site.data.pageconfig.index.engagements_title }}</h2>
            </div>

            <div id="clients" class="clients owl-carousel" data-mobile-items="1" data-tablet-items="3" data-items="6">
              {% for company in site.data.clients.companies %}
                <div class="client-block">
                  <a href="{{ company[1].url }}" target="_blank" title="{{ company[1].name }}">
                    <img src="{{ site.data.clients.config.image_repo }}{{ company[1].image }}" alt="{{ company[1].name }}">
                  </a>
                </div>
              {% endfor %}

            </div>
            <!-- /Clients Slider -->

            <div class="p-40"></div>

          </div>
        </div>

        {% if site.data.pageconfig.index.fun_facts_enabled %}
        <!-- Fun Facts -->
        <div class="row">
          <div class="col-xs-12 col-sm-12">
            <div class="block-title">
              <h2>{{ site.data.pageconfig.index.fun_facts_title }}</h2>
            </div>
          </div>
        </div>

        <div class="row">
          {% for entry in site.data.pageconfig.index.fun_facts %}
          <div class="col-xs-12 col-sm-3">
            <div class="lm-info-block gray-default">
              <i class="linecons linecons-{{ entry.icon }}"></i>
              <h4>{{ entry.title }}</h4>
              <span class="lm-info-block-value">{{ entry.value }}</span>
              <span class="lm-info-block-text"></span>
            </div>
          </div>
          {% endfor %}
        </div>
        <!-- /Fun Facts -->
        {% endif %}

        {% if site.data.pageconfig.index.pricing_enabled %}
        <div class="p-40"></div>

        <!-- Pricing -->
        <div class="row">
          <div class=" col-xs-12 col-sm-12 ">
            <div class="block-title">
              <h2>{{ site.data.pageconfig.index.pricing_title }}</h2>
            </div>
          </div>

        </div>

        <div class="row">
          <div class=" col-xs-12 col-sm-12 ">
            <div class="fw-pricing clearfix row">
              
              {% for block in site.data.pageconfig.index.pricing %}
              <div class="fw-package-wrap col-md-4 {{ block[1].highlight }}">
                <div class="fw-package">
                  <div class="fw-heading-row">
                    <span>{{ block[1].name }}</span>
                  </div>
                  
                  <div class="fw-pricing-row">
                    <span>{{ block[1].value }}</span>
                    <small>{{ block[1].frequency }}</small>
                  </div>
                  
                  <div class="fw-button-row">
                    <a href="{{ block[1].button.url }}" target="_self" class="btn btn-{{ block[1].button.status }}">{{ block[1].button.text }}</a>
                  </div>

                  {% for row in block[1].rows %}
                  <div class="fw-default-row">{{ row }}</div>
                  {% endfor %}
                </div>
              </div>  
              {% endfor %}
            </div>
          </div>
        </div>
        {% endif %}
        <!-- /Pricing -->
      </div>
    </div>
  </div>
</div>
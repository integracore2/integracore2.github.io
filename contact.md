---
layout: default
title: Contact
permalink: /contact/
---

<div id="main" class="site-main">
        <div id="main-content" class="single-page-content">
        <div id="primary" class="content-area">

            <div class="page-title">
            <h1>How can I help you?</h1>
            <div class="page-subtitle">
                <h4>“Imagination is everything. It is the preview of<br />life’s coming attractions.” – Albert Einstein</h4>
            </div>
            </div>

            <div id="content" class="page-content site-content single-post" role="main">

            <!--
            <div class="row">
                <div class="col-xs-12 col-sm-12">
                <div id="map" class="map"></div>
                </div>
            </div>
            -->
            <div class="row">
                <div class=" col-xs-12 col-sm-4 ">
                    
                <div id="info_list_1" class="info-list-w-icon">

                    <div class="info-block-w-icon">
                        <div class="ci-icon">
                            <i class="linecons linecons-phone"></i>
                        </div>
                        <div class="ci-text">
                            <h4>Prefer not to fill the form?</h4>
                            <p>I'm the same, no worries! Feel free to message me on <a href="{{ site.author.linkedin }}" target="_blank_">LinkedIn</a> instead. I typically respond to  inquiries <b>within 24 hours</b>.</p>
                        </div>
                    </div>

                    <div class="info-block-w-icon">
                        <div class="ci-icon">
                            <i class="linecons linecons-location"></i>
                        </div>
                        <div class="ci-text">
                            <h4>Based in London or Madrid?</h4>
                            <p>I'm always keen to meet up for a coffee! <b>Kindly fill in the form</b> and I'll personally get in touch to arrange our appointment.</p>
                        </div>
                    </div>
                    
                    <div class="info-block-w-icon">
                        <div class="ci-icon">
                            <i class="linecons linecons-mail"></i>
                        </div>
                        <div class="ci-text">
                            <h4>And there's always Twitter</h4>
                            <p>If neither filling in the form nor messaging via LinkedIn are an option, feel free to DM me on Twitter via <a href="{{ site.author.twitter }}" target="_blank">@integracore2</a></p>
                        </div>
                    </div>
                    
                </div>

                </div>


                <div class=" col-xs-12 col-sm-8 ">

                <div class="block-title">
                    <h2>Get In Touch</h2>
                </div>

                <form id="g_contact_form" class="contact-form" action="{{ site.contact_form.action_url }}" method="post">

                    <div class="messages"></div>

                    <div class="controls two-columns">
                    <div class="fields clearfix">
                        <div class="left-column">
                        <div class="form-group form-group-with-icon">
                            <input id="{{ site.contact_form.input_firstname }}" type="text" name="{{ site.contact_form.input_firstname }}" class="form-control" placeholder="First Name" required="required" data-error="First name is required.">
                            <div class="form-control-border"></div>
                            <div class="help-block with-errors"></div>
                        </div>

                        <div class="form-group form-group-with-icon">
                            <input id="{{ site.contact_form.input_email }}" type="email" name="{{ site.contact_form.input_email }}" class="form-control" placeholder="Email Address" required="required" data-error="Valid email is required.">
                            <div class="form-control-border"></div>
                            <div class="help-block with-errors"></div>
                        </div>

                        <div class="form-group form-group-with-icon">
                            <input id="{{ site.contact_form.input_subject }}" type="text" name="{{ site.contact_form.input_subject }}" class="form-control" placeholder="Subject" required="required" data-error="Subject is required.">
                            <div class="form-control-border"></div>
                            <div class="help-block with-errors"></div>
                        </div>
                        </div>
                        <div class="right-column">
                        <div class="form-group form-group-with-icon">
                            <textarea id="{{ site.contact_form.input_message }}" name="{{ site.contact_form.input_message }}" class="form-control" placeholder="Message" rows="7" required="required" data-error="Please, leave me a message."></textarea>
                            <div class="form-control-border"></div>
                            <div class="help-block with-errors"></div>
                        </div>
                        </div>
                    </div>

                    <!-- <div class="g-recaptcha" data-sitekey="{{ site.google_recaptcha.site_key }}"></div> -->
    
                    <input type="submit" class="button btn-send disabled" value="Send message">
                    </div>
                </form>

                </div>


            </div>

            </div>
        </div>
        </div>
    </div>
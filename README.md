RedirectBack
============

This is a very simple plugin for Rails that enables redirection back after form submission. I wasn't happy with the prevailing approach (that I was able to find) of using a session variable to store the destination.

This approach relies on storing the HTTP_REFERRER in a form field, to be submitted and dealt with in the controller. The original value can be overridden by passing ?redirect[back]=URL to the action containing the form.


Example
=======

The first part is in the form that you'd like to redirect back to multiple locations:

    = redirect_back_field

The second is in the controller where you submit the form, something like:

    redirect_to redirect_back_path || default_whatever_path

The redirect_back_field helper returns nil if the redirection would be to the same page, or if there is no HTTP_REFFERER.

The redirect_back_path method returns nil if there's no redirect[back] param, enabling you to use your default url as a destination.


Copyright (c) 2010 Bearded Studio, released under the MIT license

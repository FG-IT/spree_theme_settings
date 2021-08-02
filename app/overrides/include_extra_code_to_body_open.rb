Deface::Override.new(
    virtual_path: 'spree/layouts/spree_application',
    name: 'include_extra_code_to_body',
    insert_top: 'body',
    text: '<%= raw SpreeThemeSettings::Config.body_extra_codes %>',
)

Deface::Override.new(
    virtual_path: 'spree/layouts/checkout',
    name: 'include_extra_code_to_body',
    insert_top: 'body',
    text: '<%= raw SpreeThemeSettings::Config.body_extra_codes %>',
)

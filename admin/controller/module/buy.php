<?php

class ControllerModuleBuy extends Controller {

    private $error = array();

    public function index() {
        $this->language->load('module/buy');

        $this->document->setTitle($this->language->get('heading_title_bread'));

        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->model_setting_setting->editSetting('buy', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }

        $data['heading_title'] = $this->language->get('heading_title');

        $data['tab_general'] = $this->language->get('tab_general');
        $data['tab_form_fields'] = $this->language->get('tab_form_fields');
        $data['tab_localisation'] = $this->language->get('tab_localisation');

        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['text_yes'] = $this->language->get('text_yes');
        $data['text_no'] = $this->language->get('text_no');
        $data['text_required'] = $this->language->get('text_required');
        $data['text_not_required'] = $this->language->get('text_not_required');
        $data['text_edit'] = $this->language->get('text_edit');
        $data['text_single_col'] = $this->language->get('text_single_col');
        $data['text_two_col'] = $this->language->get('text_two_col');
        $data['text_meta_title'] = $this->language->get('text_meta_title');
        $data['text_h1'] = $this->language->get('text_h1');
        $data['text_h2'] = $this->language->get('text_h2');
        $data['text_heading_1'] = $this->language->get('text_heading_1');
        $data['text_heading_2'] = $this->language->get('text_heading_2');
        $data['text_heading_3'] = $this->language->get('text_heading_3');
        $data['text_success_text'] = $this->language->get('text_success_text');
        $data['text_success_text_logged'] = $this->language->get('text_success_text_logged');
        $data['text_success_title'] = $this->language->get('text_success_title');
        $data['text_patterns'] = $this->language->get('text_patterns');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['text_fields'] = $this->language->get('text_fields');
        $data['entry_min_order_sum'] = $this->language->get('entry_min_order_sum');
        $data['entry_cart_modules'] = $this->language->get('entry_cart_modules');
        $data['entry_shipping_select'] = $this->language->get('entry_shipping_select');
        $data['entry_payment_select'] = $this->language->get('entry_payment_select');
        $data['entry_telephone_mask'] = $this->language->get('entry_telephone_mask');
        $data['entry_form_design'] = $this->language->get('entry_form_design');
        $data['entry_form_headings'] = $this->language->get('entry_form_headings');
        $data['entry_heading_1'] = $this->language->get('entry_heading_1');
        $data['entry_heading_2'] = $this->language->get('entry_heading_2');
        $data['entry_heading_3'] = $this->language->get('entry_heading_3');
        $data['entry_meta_title'] = $this->language->get('entry_meta_title');
        $data['entry_h1'] = $this->language->get('entry_h1');
        $data['entry_h2'] = $this->language->get('entry_h2');
        $data['entry_clear_show'] = $this->language->get('entry_clear_show');
        $data['entry_success_text'] = $this->language->get('entry_success_text');
        $data['entry_success_text_logged'] = $this->language->get('entry_success_text_logged');
        $data['entry_success_title'] = $this->language->get('entry_success_title');
        $data['column_status'] = $this->language->get('column_status');
        $data['column_field'] = $this->language->get('column_field');
        $data['column_required'] = $this->language->get('column_required');
        $data['entry_login'] = $this->language->get('entry_login');

        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');

        $data['token'] = $this->session->data['token'];
        $data['settings'] = $this->model_setting_setting->getSetting('buy');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title_bread'),
            'href' => $this->url->link('extendion/module/buy', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        $data['action'] = $this->url->link('module/buy', 'token=' . $this->session->data['token'], 'SSL');

        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');


        if (isset($this->request->post['buy_status'])) {
                $data['buy_status'] = $this->request->post['buy_status'];
        } else {
                $data['buy_status'] = $this->config->get('buy_status');
        }

        $this->load->model('localisation/language');
        $data['languages'] = array();
        $languages = $this->model_localisation_language->getLanguages();
        foreach($languages as $language){
            if(isset($language['image'])){
                $image = 'view/image/flags/'.$language['image'];
            }else{
                $image = 'language/'.$language['code'].'/'.$language['code'].'.png';
            }
            $data['languages'][] = array(
                'language_id' => $language['language_id'],
                'code' => $language['code'],
                'name' => $language['name'],
                'image' => $image,
            );
        }
        
        $fields_arr = array('firstname', 'lastname', 'email', 'telephone', 'fax', 'company', 'address_1', 'address_2', 'zone', 'city', 'postcode', 'country', 'comment', 'register');
        $data['fields'] = array();
        foreach ($fields_arr as $field){
            $data['fields'][$field] = array(
                'entry' => $this->language->get('entry_'.$field)
            );
        }

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('module/buy.tpl', $data));
    }

    private function validate() {
        if (!$this->user->hasPermission('modify', 'module/buy')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }
    
    public function install() {
        $this->load->model('setting/setting');
        $this->load->model('extension/module');
        $this->load->model('user/user_group');
        

        $this->model_user_user_group->addPermission($this->user->getId(), 'access', 'module/buy');
        $this->model_user_user_group->addPermission($this->user->getId(), 'modify', 'module/buy');

        $this->model_setting_setting->editSetting('buy', array(
            'buy_success_title_ru-ru' => 'Ваш заказ принят! № заказа: {order_id}',
            'buy_success_title_ru' => 'Ваш заказ принят! № заказа: {order_id}',
            'buy_success_text_ru-ru' => '&lt;p&gt;&lt;b&gt;{firstname}&lt;/b&gt;, благодарим Вас за проявление интереса к нашей продукции!&lt;br&gt;&lt;/p&gt;&lt;p&gt;В ближайшее время с Вами свяжется менеджер нашего интернет-магазина для подтверждения заказа.&lt;/p&gt;',
            'buy_success_text_ru' => '&lt;p&gt;&lt;b&gt;{firstname}&lt;/b&gt;, благодарим Вас за проявление интереса к нашей продукции!&lt;br&gt;&lt;/p&gt;&lt;p&gt;В ближайшее время с Вами свяжется менеджер нашего интернет-магазина для подтверждения заказа.&lt;/p&gt;',
            'buy_success_text_logged_ru-ru' => '&lt;p&gt;&lt;b&gt;{firstname}&lt;/b&gt;, Ваш заказ принят!&lt;/p&gt;&lt;p&gt;История заказа находится в &lt;a href=&quot;{account_link}&quot;&gt;Личном кабинете&lt;/a&gt;. Для просмотра истории, перейдите по ссылке &lt;a href=&quot;{order_history_link}&quot;&gt;История заказов&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;Если Ваша покупка связана с цифровыми товарами, перейдите на страницу &lt;a href=&quot;{downloads_link}&quot;&gt;Файлы для скачивания&lt;/a&gt; для просмотра или скачивания.&lt;/p&gt;&lt;p&gt;Если у Вас возникли вопросы, пожалуйста &lt;a href=&quot;{contact_link}&quot;&gt;свяжитесь с нами&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;Спасибо за покупки в нашем интернет-магазине!&lt;/p&gt;',
            'buy_success_text_logged_ru' => '&lt;p&gt;&lt;b&gt;{firstname}&lt;/b&gt;, Ваш заказ принят!&lt;/p&gt;&lt;p&gt;История заказа находится в &lt;a href=&quot;{account_link}&quot;&gt;Личном кабинете&lt;/a&gt;. Для просмотра истории, перейдите по ссылке &lt;a href=&quot;{order_history_link}&quot;&gt;История заказов&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;Если Ваша покупка связана с цифровыми товарами, перейдите на страницу &lt;a href=&quot;{downloads_link}&quot;&gt;Файлы для скачивания&lt;/a&gt; для просмотра или скачивания.&lt;/p&gt;&lt;p&gt;Если у Вас возникли вопросы, пожалуйста &lt;a href=&quot;{contact_link}&quot;&gt;свяжитесь с нами&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;Спасибо за покупки в нашем интернет-магазине!&lt;/p&gt;',
            'buy_heading_1_en-gb' => 'Information',
            'buy_heading_1_en' => 'Information',
            'buy_heading_2_en-gb' => 'Address',
            'buy_heading_2_en' => 'Address',
            'buy_heading_3_en-gb' => 'Delivery and billing',
            'buy_heading_3_en' => 'Delivery and billing',
            'buy_success_title_en-gb' => 'Your order has been placed! Order number: #{order_id}',
            'buy_success_title_en' => 'Your order has been placed! Order number: #{order_id}',
            'buy_success_text_en-gb' => '&lt;p&gt;&lt;b&gt;{firstname}&lt;/b&gt;, your order has been successfully processed!&lt;/p&gt;&lt;p&gt;Please direct any questions you have to the &lt;a href=&quot;{contact_link}&quot;&gt;store owner&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;Thanks for shopping with us online!&lt;/p&gt;',
            'buy_success_text_en' => '&lt;p&gt;&lt;b&gt;{firstname}&lt;/b&gt;, your order has been successfully processed!&lt;/p&gt;&lt;p&gt;Please direct any questions you have to the &lt;a href=&quot;{contact_link}&quot;&gt;store owner&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;Thanks for shopping with us online!&lt;/p&gt;',
            'buy_success_text_logged_en-gb' => '&lt;p&gt;&lt;b&gt;{firstname}&lt;/b&gt;, your order has been successfully processed!&lt;/p&gt;&lt;p&gt;You can view your order history by going to the &lt;a href=&quot;{account_link}&quot;&gt;my account&lt;/a&gt; page and by clicking on &lt;a href=&quot;{order_history_link}&quot;&gt;history&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;If your purchase has an associated download, you can go to the account &lt;a href=&quot;{downloads_link}&quot;&gt;downloads&lt;/a&gt; page to view them.&lt;/p&gt;&lt;p&gt;Please direct any questions you have to the &lt;a href=&quot;{contact_link}&quot;&gt;store owner&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;Thanks for shopping with us online!&lt;/p&gt;',
            'buy_success_text_logged_en' => '&lt;p&gt;&lt;b&gt;{firstname}&lt;/b&gt;, your order has been successfully processed!&lt;/p&gt;&lt;p&gt;You can view your order history by going to the &lt;a href=&quot;{account_link}&quot;&gt;my account&lt;/a&gt; page and by clicking on &lt;a href=&quot;{order_history_link}&quot;&gt;history&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;If your purchase has an associated download, you can go to the account &lt;a href=&quot;{downloads_link}&quot;&gt;downloads&lt;/a&gt; page to view them.&lt;/p&gt;&lt;p&gt;Please direct any questions you have to the &lt;a href=&quot;{contact_link}&quot;&gt;store owner&lt;/a&gt;.&lt;/p&gt;&lt;p&gt;Thanks for shopping with us online!&lt;/p&gt;',
            'buy_h2_en-gb' => 'Checkout ↓',
            'buy_h2_en' => 'Checkout ↓',
            'buy_h1_en-gb' => 'Shopping Cart / Checkout',
            'buy_h1_en' => 'Shopping Cart / Checkout',
            'buy_meta_title_en-gb' => 'Shopping Cart / Checkout',
            'buy_meta_title_en' => 'Shopping Cart / Checkout',
            'buy_heading_3_ru-ru' => 'Доставка и оплата',
            'buy_heading_3_ru' => 'Доставка и оплата',
            'buy_heading_2_ru-ru' => 'Адрес',
            'buy_heading_2_ru' => 'Адрес',
            'buy_heading_1_ru-ru' => 'Информация',
            'buy_heading_1_ru' => 'Информация',
            'buy_h2_ru-ru' => 'Оформить заказ ↓',
            'buy_h2_ru' => 'Оформить заказ ↓',
            'buy_h1_ru-ru' => 'Корзина / Оформление заказа',
            'buy_h1_ru' => 'Корзина / Оформление заказа',
            'buy_meta_title_ru-ru' => 'Корзина / Оформление заказа',
            'buy_meta_title_ru' => 'Корзина / Оформление заказа',
            'buy_form_headings' => 1,
            'buy_comment_status' => 0,
            'buy_comment_required' => 0,
            'buy_country_required' => 0,
            'buy_country_status' => 0,
            'buy_postcode_required' => 0,
            'buy_postcode_status' => 0,
            'buy_city_required' => 0,
            'buy_city_status' => 1,
            'buy_zone_required' => 1,
            'buy_zone_status' => 1,
            'buy_address_2_required' => 0,
            'buy_address_2_status' => 0,
            'buy_address_1_required' => 0,
            'buy_address_1_status' => 1,
            'buy_company_required' => 0,
            'buy_company_status' => 0,
            'buy_fax_required' => 0,
            'buy_fax_status' => 0,
            'buy_telephone_required' => 1,
            'buy_telephone_status' => 1,
            'buy_email_required' => 0,
            'buy_email_status' => 1,
            'buy_lastname_required' => 0,
            'buy_lastname_status' => 0,
            'buy_firstname_required' => 1,
            'buy_firstname_status' => 1,
            'buy_min_order_sum' => '',
            'buy_telephone_mask' => '',
            'buy_payment_select' => 1,
            'buy_shipping_select' => 1,
            'buy_cart_modules' => 0,
            'buy_clear_show' => 1,
            'buy_form_design' => 0,
            'buy_status' => 0,
            'buy_login' => 1,
            'buy_register_status' => 1,
            'buy_register_required' => 0
        ));

        if (!in_array('buy', $this->model_extension_extension->getInstalled('module'))) {
            $this->model_extension_extension->install('module', 'buy');
        }
        
        $lang = $this->language->load('module/buy');
        $this->session->data['success'] = $lang['text_success_install'];
    }

    public function uninstall() {
        $this->load->model('setting/setting');
        $this->load->model('extension/module');

        $this->model_extension_extension->uninstall('module', 'buy');
        $this->model_setting_setting->deleteSetting('buy');
    }

}

?>
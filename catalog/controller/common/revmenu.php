<?php

class ControllerCommonRevmenu extends Controller
{
    public function index()
    {
        $data['heading_title'] = 'Каталог<span class="hidden-xs"> товаров</span>' . '<br />For only - lowenet.biz';
        $this->document->addScript('catalog/view/javascript/aim.js');
        $this->document->addScript('catalog/view/javascript/amazoncategory.js');
        $this->document->addStyle('catalog/view/theme/default/stylesheet/revmenu.css');
        $setting = $this->config->get('revtheme_header_menu');
        if ($setting['inhome']) {
            $data['module_class'] = 'inhome';
        } else {
            $data['module_class'] = false;
        }
        $this->load->model('catalog/information');
        $data['informations'] = array();
        foreach ($this->model_catalog_information->getInformations() as $result) {
            if ($result['bottom']) {
                $data['informations'][] = array('title' => $result['title'], 'href' => $this->url->link('information/information', 'information_id=' . $result['information_id']));
            }
        }
        if (isset($this->request->get['path'])) {
            $parts = explode('_', (string)$this->request->get['path']);
        } else {
            $parts = array();
        }
        if (isset($parts[0])) {
            $data['category_id'] = $parts[0];
        } else {
            $data['category_id'] = 0;
        }
        if (isset($parts[1])) {
            $data['child_id'] = $parts[1];
        } else {
            $data['child_id'] = 0;
        }
        if (isset($parts[2])) {
            $data['child2_id'] = $parts[2];
        } else {
            $data['child2_id'] = 0;
        }
        if (isset($parts[3])) {
            $data['child3_id'] = $parts[3];
        } else {
            $data['child3_id'] = 0;
        }
        $this->load->model('catalog/category');
        $this->load->model('catalog/product');
        $data['categories'] = array();
        $categories = $this->model_catalog_category->getCategories(0);
        foreach ($categories as $category) {
            $children_data = array();
            $children = $this->model_catalog_category->getCategories($category['category_id']);
            foreach ($children as $child) {
                $children2_data = array();
                $children2 = $this->model_catalog_category->getCategories($child['category_id']);
                foreach ($children2 as $child2) {
                    $data2 = array('filter_category_id' => $child2['category_id'], 'filter_sub_category' => true);
                    $children3_data = array();
                    $children3 = $this->model_catalog_category->getCategories($child2['category_id']);
                    foreach ($children3 as $child3) {
                        $data3 = array('filter_category_id' => $child3['category_id'], 'filter_sub_category' => true);
                        $children3_data[] = array('category_id' => $child3['category_id'], 'name' => $child3['name'], 'href' => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'] . '_' . $child2['category_id'] . '_' . $child3['category_id']));
                    }
                    $children2_data[] = array('category_id' => $child2['category_id'], 'child3_id' => $children3_data, 'name' => $child2['name'], 'href' => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'] . '_' . $child2['category_id']));
                }
                $children_data[] = array('category_id' => $child['category_id'], 'child2_id' => $children2_data, 'name' => $child['name'], 'href' => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id']));
            }
            $data['categories'][] = array('category_id' => $category['category_id'], 'name' => $category['name'], 'children' => $children_data, 'href' => $this->url->link('product/category', 'path=' . $category['category_id']), 'column' => $category['column'] ? $category['column'] : 1,);
        }

        $this->load->language('common/header');

        // Wishlist
        if ($this->customer->isLogged()) {
            $this->load->model('account/wishlist');

            $data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
        } else {
            $data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
        }

        $data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
        $data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', 'SSL'), $this->customer->getFirstName(), $this->url->link('account/logout', '', 'SSL'));

        $data['text_account'] = $this->language->get('text_account');
        $data['text_register'] = $this->language->get('text_register');
        $data['text_login'] = $this->language->get('text_login');
        $data['text_order'] = $this->language->get('text_order');
        $data['text_transaction'] = $this->language->get('text_transaction');
        $data['text_download'] = $this->language->get('text_download');
        $data['text_logout'] = $this->language->get('text_logout');
        $data['text_checkout'] = $this->language->get('text_checkout');
        $data['text_page'] = $this->language->get('text_page');
        $data['text_category'] = $this->language->get('text_category');
        $data['text_all'] = $this->language->get('text_all');

        $data['home'] = $this->url->link('common/home');
        $data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
        $data['logged'] = $this->customer->isLogged();
        $data['account'] = $this->url->link('account/account', '', 'SSL');
        $data['register'] = $this->url->link('account/register', '', 'SSL');
        $data['login'] = $this->url->link('account/login', '', 'SSL');
        $data['order'] = $this->url->link('account/order', '', 'SSL');
        $data['transaction'] = $this->url->link('account/transaction', '', 'SSL');
        $data['download'] = $this->url->link('account/download', '', 'SSL');
        $data['logout'] = $this->url->link('account/logout', '', 'SSL');
        $data['shopping_cart'] = $this->url->link('checkout/cart');
        $data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');
        $data['contact'] = $this->url->link('information/contact');
        $data['telephone'] = $this->config->get('config_telephone');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/revmenu.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/common/revmenu.tpl', $data);
        } else {
            return $this->load->view('default/template/common/revmenu.tpl', $data);
        }
    }
}

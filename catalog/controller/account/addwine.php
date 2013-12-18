<?php

class ControllerAccountAddWine extends Controller {

    private $error = array();

    public function index() {
        $this->load->model('account/customer');
        $this->language->load('account/addwine');
        $this->document->setTitle($this->language->get('heading_title'));
        
        if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
            $server = $this->config->get('config_ssl');
        } else {
            $server = $this->config->get('config_url');
        }
        
        $this->data['base'] = $server;
        
        $this->data['breadcrumbs'] = array();
        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_account'),
            'href' => $this->url->link('account/account', '', 'SSL'),
            'separator' => $this->language->get('text_separator')
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_addwine'),
            'href' => $this->url->link('account/addwine', '', 'SSL'),
            'separator' => $this->language->get('text_separator')
        );

        $this->data['heading_title'] = $this->language->get('heading_title');
        $this->data['button_continue'] = $this->language->get('button_continue');
        $this->data['button_login'] = $this->language->get('button_login');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/add_wine.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/account/add_wine.tpl';
        } else {
            $this->template = 'default/template/account/add_wine.tpl';
        }

        $this->children = array(
            'common/column_left',
            'common/column_right',
            'common/content_top',
            'common/content_bottom',
            'common/footer',
            'common/header'
        );

        $this->response->setOutput($this->render());
    }

}

?>
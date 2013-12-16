<?php
class ControllerInformationContentHome extends Controller {
    public function index() {
        $this->language->load('information/content_home'); //Optional. This calls for your language file
 
        $this->document->setTitle($this->language->get('heading_title')); //Optional. Set the title of your web page.
 
        $this->data['breadcrumbs'] = array();
        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home'),
            'separator' => false
        );
        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('information/content_home'),
            'separator' => $this->language->get('text_separator')
        );
        
        $this->data['tVar'] = $this->language->get('test variabele');
 
        // Text from language file
        $this->data['heading_title'] = $this->language->get('heading_title'); //Get "heading title"
        $this->data['text_content']  = $this->language->get('text_content');
 
        // We call this Fallback system
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/content_home.tpl')) { //if file exists in your current template folder
            $this->template = $this->config->get('config_template') . '/template/information/content_home.tpl'; //get it
        } else {
            $this->template = 'default/template/information/content_home.tpl'; //or get the file from the default folder
        }
 
        //Required. The children files for the page.
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
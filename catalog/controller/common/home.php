<?php

class ControllerCommonHome extends Controller {

    public function index() {
        $this->document->setTitle($this->config->get('config_title'));
        $this->document->setDescription($this->config->get('config_meta_description'));
        $this->data['heading_title'] = $this->config->get('config_title');

        $this->load->model('catalog/product');
        $this->data['products'] = array();
        $data = array(
            'sort' => 'p.date_added',
            'order' => 'DESC',
            'start' => 0,
            'limit' => 30
        );

        $results = $this->model_catalog_product->getProducts($data);

        foreach ($results as $result) {
            $image = false;

            if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
                $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
            } else {
                $price = false;
            }

            if ((float) $result['special']) {
                $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
            } else {
                $special = false;
            }

            if ($this->config->get('config_review_status')) {
                $rating = $result['rating'];
            } else {
                $rating = false;
            }

            $this->data['products'][] = array(
                'product_id' => $result['product_id'],
                'thumb' => $result['image'],
                'name' => $result['name'],
                'price' => $price,
                'special' => $special,
                'rating' => $rating,
                'reviews' => sprintf($this->language->get('text_reviews'), (int) $result['reviews']),
                'href' => $this->url->link('product/product', 'product_id=' . $result['product_id']),
                'visual' => $result['visual']
            );
        }

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/common/home.tpl';
        } else {
            $this->template = 'default/template/common/home.tpl';
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
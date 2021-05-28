<?php
namespace Magepow\CustomMetaTitle\Block\Customer\Block\Form;

class Register extends\Magento\Customer\Block\Form\Register
{

    /**
     * @return $this
     */
    protected function _prepareLayout() 
    {   
        parent::_prepareLayout();
        $this->pageConfig->getTitle()->set(__('Custom title Create New Customer Account 2'));
        $this->pageConfig->setKeywords(__('meta keywords goes here 2.')); // meta keywords
        $this->pageConfig->setDescription(__('meta description goes here 2.')); // meta description

        return $this;
    }
}
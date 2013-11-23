<?php
/**
 * This is the organization-widget: 1 specific address
 *
 * @author Wouter Verstuyf <info@webflow.be>
 */
class FrontendLocationWidgetOrganization extends FrontendBaseWidget
{
  /**
   * @var array
   */
  protected $items = array(), $settings = array();

  /**
   * Execute the extra
   */
  public function execute()
  {
    parent::execute();

    $this->loadTemplate();
    $this->loadData();
    $this->parse();

  }

  /**
   * Load the data
   */
  protected function loadData()
  {
    $this->item = FrontendLocationModel::get($this->data['id']);
  }

  /**
   * Parse the data into the template
   */
  private function parse()
  {
    $this->tpl->assign('widgetOrganizationItem', $this->item);
  }
}

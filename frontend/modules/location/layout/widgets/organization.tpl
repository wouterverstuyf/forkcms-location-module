{option:widgetOrganizationItem}
<div class="organization" itemscope itemtype="http://schema.org/Organization">
  <h4>
    <span itemprop="name">{$widgetOrganizationItem.title}</span>
  </h4>
  <div class="adres" itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
    <p><span itemprop="streetAddress">{$widgetOrganizationItem.street} {$widgetOrganizationItem.number}</p>
    <p>
      <span itemprop="postalCode">{$widgetOrganizationItem.zip}</span>
      <span itemprop="addressLocality">{$widgetOrganizationItem.city}, {$widgetOrganizationItem.country}</span>
    </p>
    {option:widgetOrganizationItem.organizationnumber}
    <p>{$widgetOrganizationItem.organizationnumber}</p>
    {/option:widgetOrganizationItem.organizationnumber}
  </div>

  {option:widgetOrganizationItem.email}
  <p class="email" itemprop="email">
    <a href="mailto:{$widgetOrganizationItem.email}">{$widgetOrganizationItem.email}</a>
  </p>
  {/option:widgetOrganizationItem.email}

  {option:widgetOrganizationItem.telephone}
  <p class="telephone" itemprop="telephoneNumber">
    <span>{$lblTelephone|ucfirst}</span> {$widgetOrganizationItem.telephone}
  </p>
  {/option:widgetOrganizationItem.telephone}

  {option:widgetOrganizationItem.fax}
  <p class="fax" itemprop="faxNumber">
    <span>{$lblFax|ucfirst}</span> {$widgetOrganizationItem.fax}
  </p>
  {/option:widgetOrganizationItem.fax}

</div>
{/option:widgetOrganizationItem}

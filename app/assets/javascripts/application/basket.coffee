class Basket
  constructor: ->
    @basketId = $('#basket').data('basket-id')
    @downloadBasket()
    $('body').on('ajax:success', '.item-button, .item-link', @onItemAjaxSuccess)

  downloadBasket: =>
    $.ajax({
      dataType: 'json',
      url: "http://localhost:3000/baskets/#{@basketId}.json"
      success: @replaceBasket
    })

  replaceBasket: (response, status, _) =>
    @basketList = @createBasketList()
    @addItemsToBasket(response.basket.items)
    $('#basket').html(@basketList)

  createBasketList: =>
    $('<ul>').addClass('basket-list')

  addItemsToBasket: (items) =>
    items.forEach(@addItemToBasket)

  addItemToBasket: (item) =>
    @basketList.append(@basketItem(item))

  basketItem: (item) =>
    list_item = $('<li>')
    item_price = $('<div>').text(item.price).addClass('item-price')
    item_name = $('<div>').text(item.name).addClass('item-name')
    item_sum = $('<div>').text(item.sum).addClass('item-sum')
    item_quantity_section = $('<div>').addClass('item-quantity-section')
    item_quantity = $('<div>').text(item.quantity).addClass('item-quantity')
    item_add_link = $('<a>').text('+').addClass('item-link').addClass('add-item')
      .attr('data-remote', 'true')
      .attr('data-method', 'post')
      .attr('href', "/baskets/#{@basketId}/items?cupcake_id=#{item.id}")
    item_remove_link = $('<a>').text('-').addClass('item-link').addClass('remove-item')
      .attr('data-remote', 'true')
      .attr('data-method', 'delete')
      .attr('href', "/baskets/#{@basketId}/items/#{item.id}")
    list_item.append(item_name)
    list_item.append(item_price)
    item_quantity_section.append(item_remove_link)
    item_quantity_section.append(item_quantity)
    item_quantity_section.append(item_add_link)
    item_quantity_section.append(item_sum)
    list_item.append(item_quantity_section)

  onItemAjaxSuccess: (event, response) =>
    if @removingItem($(event.target))
      $('.item-added').text('-1')
    else
      $('.item-added').text('+1')

    @blinkNotification()
    @replaceBasket(response)

  removingItem: (link) =>
    link.hasClass('remove-item')

  blinkNotification: =>
    $('.basket-link').addClass('adding-item')
    setTimeout =>
      $('.basket-link').removeClass('adding-item')
    , 300

$(document).on('ready page:load', -> new Basket)

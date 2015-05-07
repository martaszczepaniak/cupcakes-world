class Basket
  constructor: ->
    @downloadBasket()
    $('body').on('ajax:success', '.item-button', @onItemAjaxSuccess)

  downloadBasket: =>
    $.ajax({
      dataType: 'json',
      url: 'http://localhost:3000/baskets/1.json'
      success: @replaceBasket
    })

  replaceBasket: (response, status, _) =>
    @basketList = @createBasketList()
    @addItemsToBasket(response.basket.items)
    $('#basket').html(@basketList)

  createBasketList: =>
    $('<ul>').attr('id', 'basket')

  addItemsToBasket: (items) =>
    items.forEach(@addItemToBasket)

  addItemToBasket: (item) =>
    @basketList.append(@basketItem(item))

  basketItem: (item) =>
    item = $('<li>').text(item.cupcake_id)

  onItemAjaxSuccess: (_, response) =>
    @replaceBasket(response)

$(document).on('ready', -> new Basket)
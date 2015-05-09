json.basket do
  json.id @basket.id
  json.items @basket.items.grouped_by_cupcake, partial: 'items/item', as: :item
  json.price_sum @basket.items.price_sum
end

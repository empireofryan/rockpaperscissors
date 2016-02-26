module ApplicationHelper

  def score(game, player)
    game.choices.where(winner_id: player.id).count
  end

  def object(game, player, image, object_id, parameter_key)
    link_to((image_tag "#{image}.png", :id => object_id),choices_path(game_id: game.id, parameter_key => player.id, option: image), method: :post, :class => "turn", remote: true)
  end
end

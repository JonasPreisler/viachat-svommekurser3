jQuery(document).on 'turbolinks:load', ->
  programs = $('#programs')
  count = programs.find('.count > span')

  recount = -> count.text programs.find('.nested-fields').size()

  programs.on 'cocoon:before-insert', (e, el_to_add) ->
    el_to_add.fadeIn(1000)

  programs.on 'cocoon:after-insert', (e, added_el) ->
    added_el.effect('highlight', {}, 500)
    recount()

  programs.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 1000)
    el_to_remove.fadeOut(1000)

  programs.on 'cocoon:after-remove', (e, removed_el) ->
    recount()


jQuery(document).on 'turbolinks:load', ->
  speakers = $('#speakers')
  count = speakers.find('.count > span')

  recount = -> count.text speakers.find('.nested-fields').size()

  speakers.on 'cocoon:before-insert', (e, el_to_add) ->
    el_to_add.fadeIn(1000)

  speakers.on 'cocoon:after-insert', (e, added_el) ->
    added_el.effect('highlight', {}, 500)
    recount()

  speakers.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 1000)
    el_to_remove.fadeOut(1000)

  speakers.on 'cocoon:after-remove', (e, removed_el) ->
    recount()


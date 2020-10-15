datum/preferences
<<<<<<< HEAD
	var/icon/preview_icon 
	var/icon/preview_south
	var/icon/preview_north
	var/icon/preview_east 
	var/icon/preview_west 
=======
	var/icon/preview_icon
	var/icon/preview_south
	var/icon/preview_north
	var/icon/preview_east
	var/icon/preview_west
>>>>>>> f05e272... Merge pull request #193 from Trilbyspaceclone/beep_boop
	var/preview_dir = SOUTH	//for augmentation

datum/preferences/proc/update_preview_icon(var/naked = FALSE)
	var/mob/living/carbon/human/dummy/mannequin/mannequin = get_mannequin(client_ckey)
	mannequin.delete_inventory(TRUE)
	preview_icon = icon('icons/effects/96x64.dmi', bgstate)

	if(SSticker.current_state > GAME_STATE_STARTUP)
		dress_preview_mob(mannequin, naked)

	mannequin.dir = EAST
	preview_east = getFlatIcon(mannequin, EAST)

	mannequin.dir = WEST
	var/icon/stamp = getFlatIcon(mannequin, WEST)
	preview_icon.Blend(stamp, ICON_OVERLAY, (preview_icon.Width()/6*1) - (stamp.Width()/2) + 2, preview_icon.Height()/4*1 + 1)
	preview_west = stamp

	mannequin.dir = NORTH
	stamp = getFlatIcon(mannequin, NORTH)
	preview_icon.Blend(stamp, ICON_OVERLAY, (preview_icon.Width()/6*3) - (stamp.Width()/2) + 2, preview_icon.Height()/4*2 + 1)
	preview_north = stamp

	mannequin.dir = SOUTH
	stamp = getFlatIcon(mannequin, SOUTH)
	preview_icon.Blend(stamp, ICON_OVERLAY, (preview_icon.Width()/6*5) - (stamp.Width()/2) + 2, preview_icon.Height()/4*0 + 1)
	preview_south = stamp

	// Scaling here to prevent blurring in the browser.
	preview_east.Scale(preview_east.Width() * 2, preview_east.Height() * 2)
	preview_west.Scale(preview_west.Width() * 2, preview_west.Height() * 2)
	preview_north.Scale(preview_north.Width() * 2, preview_north.Height() * 2)
	preview_south.Scale(preview_south.Width() * 2, preview_south.Height() * 2)
	preview_icon.Scale(preview_icon.Width() * 2, preview_icon.Height() * 2)
	return mannequin.icon

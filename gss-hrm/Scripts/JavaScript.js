$(function () {

    $("#tt").tabs({
        border: false,
        fit: true,
    });

});

$(window).resize(function () {
    ChangeExpandButtonsVisibility(LeftPanel.IsExpandable(), LeftPanel.IsExpanded());
});

function checktabmenu(url, name) {
    if (LeftPanel.IsExpandable() && LeftPanel.IsExpanded()) {

        hideMenu();
        setTimeout(function () { addtab_content(url, name); }, 400);

    } else {

        addtab_content(url, name);

    }
}

function addtab_content(url, name) {
    if ($('#tt').tabs('exists', name)) {
        $('#tt').tabs('select', name);
    } else {
        $.ajax({
            url: url,
            beforeSend: function () {
                loadingPanel.Show();
            },
            complete: function () {
                loadingPanel.Hide();
            },
            success: function (data1) {
                //alert(url);
                //if ($('#tt').tabs('exists', name)) {
                //    $('#tt').tabs('select', name);
                //} else {
                var content = '<iframe scrolling="auto" frameborder="0" src="' + url + '"  width="100%" height="95%"></iframe>';
                $('#tt').tabs('add', {
                    title: name,
                    content: content,
                    closable: true,
                });
                //}
            }
        });
        return false;
    }
}

function onMenuNavButtonCheckedChanged(s, e) {
    if (s.GetChecked()) {
        showMenu();
    }
    else {
        hideMenu();
    }
}

function showMenu() {
    document.getElementById("titlemenu").style.width = "257px";
    LeftPanel.Expand();
}

function hideMenu() {
    document.getElementById("titlemenu").style.width = "0";
    LeftPanel.Collapse();
    if (window["MenuButton"] && MenuButton.GetMainElement() && MenuButton.GetChecked())
        MenuButton.SetChecked(false);
}

function ChangeExpandButtonsVisibility(expandable, expand) {
    MenuButton.SetChecked(expandable && !expand);
    MenuButton.SetChecked(expandable && expand);
    if (expandable && !expand) {
        document.getElementById("titlemenu").style.width = "0";
    } else {
        document.getElementById("titlemenu").style.width = "257px";
    }
}
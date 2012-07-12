<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Listado de Usuarios</title>
    <style>
        #container {
            width: 950px;
        }
        .items {
            float: left;
            width: 750px;
        }
        .view {
            border: 1px solid #C9E0ED;
            margin: 10px 0;
            padding: 10px;
        }
        .sidebar {
            border: 1px solid #C9E0ED;
            margin-right: 0;
            width: 190px;
            height: 200px;
            float: left;
        }
    </style>
</head>
<body>
<div id="container">
    <h1>Listado de usuarios</h1>
    <div class="items">
        <?php foreach($query->result() As $row): ?>
        <div class="view">
            <b>ID:</b>
            <?=anchor('#', $row->id); ?>
            <br />

            <b>Nombre:</b>
            <?=$row->nombre; ?>
            <br />

            <b>Email:</b>
            <?=$row->email; ?>
            <br />
        </div>
        <?php endforeach; ?>
    </div>
    <div class='sidebar'>sidebar</div>
</div>
</body>
</html>
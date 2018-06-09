<section class="menu-departamentos">
    <!-- <h2>Departamentos</h2> -->
    <?php
        $categorias = $db->executa("SELECT * FROM CATEGORIAS");
    ?>
    <nav>
    <ul>
        <?php while ($row = $categorias->fetch_array(MYSQLI_ASSOC)) { ?>
        <li>
            <a href="listagem.php?cat_id=<?php echo $row['id'];?>&sub_cat_id=-1"><?php echo utf8_encode($row['descricao']); ?></a>
            <?php
            $subcategorias = $db->executa("SELECT * FROM SUBCATEGORIAS WHERE CATEGORIAS_ID = ".$row['id']);
            ?>
            <ul class="sub-menu">
            <?php while ($r = $subcategorias->fetch_array(MYSQLI_ASSOC)) { ?>
                <li><a href="listagem.php?cat_id=<?php echo $row['id'];?>&sub_cat_id=<?php echo $r['id']; ?>"><?php echo utf8_encode($r['descricao']); ?></a></li>
            <?php } ?>
            </ul>
        </li>
        <?php } ?>
        </ul>
    </nav>
</section>

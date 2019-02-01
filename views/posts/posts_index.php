<div class="span8">
    <?php foreach($posts as $post):?>
    <h1><?php echo $post['post_subject'];?></h1>
    <p><?php echo $post['post_text'];?></p>
    <div>
        <span class="badge badge-success">Posted <?php echo $post['post_created'];?></span><div class="pull-right"><span class="label">alice</span> <span class="label">story</span> <span class="label">blog</span> <span class="label">personal</span></div>
    </div>
    <hr>
    <?php endforeach;?>
</div>
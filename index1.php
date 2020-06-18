<?php include "includes/db.php"; ?>
<?php include "includes/header.php"; ?>

    <!-- Navigation -->
    
<?php include "includes/navigation.php"; ?>


    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <!-- Blog Entries Column -->
            
            
            
            <div class="col-md-9">
                
                
                <?php 
                
                
             
                
                $query = "SELECT * FROM posts ";
                $select_all_posts_query = mysqli_query($connection, $query);

                while($row = mysqli_fetch_assoc($select_all_posts_query)) {
                $post_id = $row['post_id'];
                $post_title = $row['post_title'];
                $post_author = $row['post_author']; 
                $post_date = $row['post_date']; 
                $post_image = $row['post_image']; 
                $post_content = substr($row['post_content'], 0,100); 
                $post_status = $row['post_status'];
                    
                    if($post_status == 'published'){
                        
//                        echo "<h1 class='text-center'>THIS POST IS PENDING</h1>";
//                        
//                    }else {
//                    
                    
                    
                    
                    
                  ?>
                   
                     
                       
                         <h1 class="page-header">
                    Page Heading
                    <small>Secondary Text</small>
                </h1>

                <!-- First Blog Post -->
                <h2>
                    <a href="post.php?p_id=<?php echo $post_id; ?>"><?php echo $post_title ?></a>
                </h2>
                <p class="lead">
                    by <a href="author_post.php?author=<?php echo $post_author ?>&p_id=<?php echo $post_id ?>"><?php echo $post_author ?></a>
                </p>
                <p><span class="glyphicon glyphicon-time"></span><?php echo $post_date ?></p>
                <hr>
                
                <a href="post.php?p_id=<?php echo $post_id; ?>">
                <img class="img-responsive" src="images/<?php echo $post_image; ?>" alt="">
                </a>
                
                <hr>
                <p><?php echo $post_content ?></p>
                <a href="post.php?p_id=<?php echo $post_id; ?>" class="btn btn-primary" >Read More <span class="glyphicon glyphicon-chevron-right"></span></a>

                <hr>
                
                
                       
                                     
                                       
                <?php     }  } ?>
                
                
  
                
                
            </div>

   
            
            

            <!-- Blog Sidebar Widgets Column -->
            
            
                     <div class="col-md-3">
                     
<!--                     <h2 class="page-header">-->
                     
                      
    <div class="row">
        <div class="col-lg-12">
       <h4 class="page-header"> Welcome to CMS: </h4> <h2><?php echo $_SESSION['username']; ?></h2>
            <h4><li>
                <?php echo "<td> <a onClick=\"javascript: return confirm('Are you sure you want to Log out?'); \"   href='includes/logout.php'><i class='fa fa-fw fa-power-off'></i> Log Out</a></td> "?>
            </li> 
            </h4>
      
        </div>
    </div>

              
                
                        

                <!-- Blog Search Well -->
                <div class="well">
                    <h4>Blog Search</h4>
                    
                    <form action="search.php" method="post">
                    
                    <div class="input-group">
                        <input name="search" type="text" class="form-control">
                        <span class="input-group-btn">
                            <button name="submit" class="btn btn-default" type="submit">
                                <span class="glyphicon glyphicon-search"></span>
                        </button>
                        </span>
                    </div>
                    </form><!-- search form -->
                    <!-- /.input-group -->
                </div>
                
                   
                        <!--login-->
                        
                        
                        
                        
                              <div class="well">
                   
                   
                   
        <?php 

            $query = "SELECT * FROM categories ";
            $select_categories_sidebar = mysqli_query($connection, $query);



        ?>
                       
                   
                        
                        
                    <h4>Blog Categories</h4>
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="list-unstyled">
                               
                     <?php 
                                
                            while($row = mysqli_fetch_assoc($select_categories_sidebar)) {
                            $cat_title = $row['cat_title']; 
                            $cat_id = $row['cat_id'];  


                            echo "<li><a href='category.php?category=$cat_id'>{$cat_title}</a></li>";

                           
                            }

                                
                                
                      ?>
                               
                    
                            </ul>
                        </div>
         
                    </div>     
                   
                
               
     
           </div>


            </div>
            
            
            
            
            
            

       
       
       
       <?php //include "includes/sidebar.php"; ?>
       
       
       
        </div>
        <!-- /.row -->

        <hr>
<?php include "includes/footer.php"; ?>
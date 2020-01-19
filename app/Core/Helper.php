<?php
 /**
  *
  */
 class Helper
 {
  public static function uploadFile($target_dir, $name, $file_tmp, $file_size)

   {
     $uploadErr='';
       $file = strtolower(preg_replace('/[^a-zA-Z0-9.\']/', "", $name));;
       $target_file = $target_dir . basename($file);
       $upload_ok = 1;
       $imageFileType = pathinfo($target_file, PATHINFO_EXTENSION);
   // Check if image file is a actual image or fake image
       if ($_FILES) {
           $check = getimagesize($file_tmp);
           if($check !== false) {
               $upload_ok = 1;
           } else {
               $uploadErr .= "File is not an image.";
               $upload_ok = 0;
           }
       }
   // Check if image file is already uploaded
       if (file_exists($target_file)) {
           $uploadErr .= "Sorry, file already exists.";
           $upload_ok = 0;
       }
   // Check file size
       if ($file_size > 9000000000) {
           $uploadErr .= "Sorry, your file is too large.";
           $upload_ok = 0;
       }
   // Allow certain file formats
       if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
           && $imageFileType != "gif" ) {
           $uploadErr .= "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
           $upload_ok = 0;
       }
   // Check if $upload_ok is set to 0 by an error
       if ($upload_ok == 0) {
           $uploadErr .= "Sorry, your file was not uploaded.";
   // if everything is ok, try to upload file
       } else {
           if (move_uploaded_file($file_tmp, $target_file)) {
               return $file;
           } else {
               $uploadErr .= "Sorry, there was an error uploading your file.";
           }
       }
   }

 #return COUNT of news
   public static function  countNews()
   {
     $db= new Model();
     $counter =$db->query("select count(*) as count from news");
     return $counter[0]['count'];
   }

   #return COUNT of comments
     public static function  countComment()
     {
       $db= new Model();
       $counter =$db->query("select count(*) as count from comments");
       return $counter[0]['count'];
     }

     #return COUNT of activities
       public static function  countlikes()
       {
         $db= new Model();
         $counter =$db->query("select count(likes) as count from likes");
         return $counter[0]['count'];
       }
       #return COUNT of activities
         public static function  countdislikes()
         {
           $db= new Model();
           $counter =$db->query("select count(dislikes) as count from likes");
           return $counter[0]['count'];
         }

       #return COUNT of users
         public static function  countUsers()
         {
           $db= new Model();
           $counter =$db->query("select count(*) as count from users");
           return $counter[0]['count'];
         }

         #return COUNT of categories
           public static function  countCategories()
           {
             $db= new Model();
             $counter =$db->query("select count(*) as count from categories");
             return $counter[0]['count'];
           }


   #check if category have posts or news @param is of category from news row
   public static function haveItem($data, $arr)
   {


     if (!empty($arr)) {
       foreach ($arr as $key => $values) {

            if ($data==$values['category']) {

            return 1;
            }

       }

     }


    return 0;


   }

   #return string of category's name @param id of category that come from news row
   public static function catName($id)
   {

     $counter =DB::init()->query("SELECT *  FROM categories WHERE id = $id ");
     if (!empty($counter)) {
       return $counter[0]['cat_title'];
     }

   }


#return COUNT of comments for post @param is id of post
   public static function countComments($id)
   {

     $counter =DB::init()->query("SELECT COUNT(*) AS count FROM comments WHERE news_id= $id ");

       return $counter[0]['count'];


   }

   #return COUNT of news for category @param is id of category
      public static function countposts($id)
      {

        $counter =DB::init()->query("SELECT COUNT(*) AS count FROM news WHERE category= $id ");

          return $counter[0]['count'];


      }

      #return string of user's name @param id of usernaem that come from comments or athor action row
      public static function userName($id)
      {

        $username =DB::init()->query("SELECT *  FROM users WHERE id = $id ");
        if (!empty($username)) {
          return $username[0]['username'];
        }

      }

      #returns tags  for each post

    public static  function tags($subject){


          $tags = preg_split('/\s/', $subject);


          return $tags;
      }



 }


 ?>

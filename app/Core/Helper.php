<?php
 /**
  *
  */
 class Helper
 {
  public static function uploadFile($target_dir, $name, $file_tmp, $file_size,$type)

   {
     $uploadErr='';
     // if(is_dir($target_dir)==false){
     //                 mkdir("$target_dir", 0700);		// Create directory if it does not exist
     //             }





       $upload_ok = 1;
       $imageFileType = pathinfo($name, PATHINFO_EXTENSION);
       $file =  md5(uniqid()) . "." . $imageFileType;
       $target_file = $target_dir.$file ;





     // Check if image file is a actual image or fake image

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
             && $imageFileType != "gif" && $imageFileType != "pdf" ) {
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



   #founction to shorten NumberFormatter
   public static function NumberFormatter($num)
   {
     if ($num>=1000000) {
       return (round($num/1000000,1)).'M';
      }
      elseif ($num>=1000) {
      return (round($num/1000,1)).'K';
      }
      else {
        return $num;
      }
   }

 #return COUNT of compaign view
   public static function  countViewCompaign($id)
   {
     $db= new DB();
     $counter =$db->QueryCrud("SELECT COUNT(*) AS count FROM visits WHERE compaign_id=?",[$id]);
     return Helper::NumberFormatter($counter[0]['count']);
   }

   #return COUNT of comments
     public static function  countComment($id)
     {
       $db= new DB();
       $counter =$db->QueryCrud("SELECT COUNT(*) AS count FROM comments WHERE compigan_id=?",[$id]);
       return Helper::NumberFormatter($counter[0]['count']);
     }

     #return COUNT of donars
       public static function  countDonars($id)
       {
         $db= new DB();
         $counter =$db->QueryCrud("SELECT COUNT(*) AS count FROM donations WHERE compigan_id=?",[$id]);
         return Helper::NumberFormatter($counter[0]['count']);
       }


     public static function getProgress($id)
     {
       $db= new DB();
       $donations =$db->QueryCrud("SELECT SUM(amount) AS sum FROM donations WHERE compigan_id=?",[$id])[0]['sum'];
       $compaign=$db->QueryCrud("SELECT cost FROM compigans WHERE id =?",[$id])[0]['cost'];
       return  floor(($donations/$compaign)*100);

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

   #return string of campaign title
   public static function getCompaignTitle ($id)
   {

     $title =DB::init()->QueryCrud("SELECT *  FROM compigans WHERE id = ? ",[$id]);
     if (!empty($title)) {
       return $title[0]['title'];
     }

   }


#return COUNT of comments for post @param is id of post
   public static function countComments($id)
   {

     $counter =DB::init()->QueryCrud("SELECT COUNT(*) AS count FROM comments WHERE news_id= $id ");

       return $counter[0]['count'];


   }

   public static function goHome()
   {
     header('Location:/home/index');
   }


   #return COUNT of news for category @param is id of category
      public static function countposts($id)
      {

        $counter =DB::init()->QueryCrud("SELECT COUNT(*) AS count FROM news WHERE category= $id ");

          return $counter[0]['count'];


      }

      #return string of user's name @param id of usernaem that come from comments or athor action row
      public static function userName($id)
      {


        $username =DB::init()->QueryCrud("SELECT * FROM profiles WHERE (user_id = $id) and (name ='First Name' or name='Last Name')");

        if (!empty($username)) {
          return $username[0]['value'].' '.$username[1]['value'];
        }

      }

      #returns tags  for each post

    public static  function tags($subject){


          $tags = preg_split('/\s/', $subject);


          return $tags;
      }


      public static function back()
      {
        header('Location:'.$_SERVER['HTTP_REFERER']);
        exit;
      }



      //for mearge full name from profile to users


      public static function merageUserInfo($baiscInfo,$col){
        $result = array();
        foreach($baiscInfo as $details){
          $info = $details;
          $info['name']=self::userName($details[$col]);
          $result[]= $info;
        }
        return $result;
      }



      //
      public static function getDonars($id='')
      {
        $counter =DB::init()->QueryCrud("SELECT SUM(amount) AS sum FROM donations WHERE compigan_id= $id ");

          return $counter[0]['sum'];
      }

      public static function getUsersId()
      {
        $results =DB::init()->QueryCrud("SELECT id from users where status=1 ");
        $users=[];
        foreach($results as $user){
          $users[]=$user['id'];
        }

          return $users;
      }

 }
 ?>

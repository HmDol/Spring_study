package imgboard;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.*;

@Mapper
public interface ImgBoardDao {
   @Insert("insert into imgboard values(seq_imgboard.nextval , #{writer}, sysdate, #{title}, #{content}, #{path})")
   void insert(ImgBoard m);

   @Select("select * from imgboard where num=#{num}")
   ImgBoard select(@Param("num") int num);

   @Select("select * from imgboard")
   ArrayList<ImgBoard> selectAll();

   @Update("update imgboard set title=#{title}, content=#{content} where num=#{num}")
   void update(ImgBoard m);

   @Delete("delete from imgboard where num=#{num}")
   void delete(@Param("num") int num);
}
package imgrep;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


@Mapper
public interface ImgrepDao {
	   @Insert("insert into imgrep values(seq_imgrep.nextval , #{writer}, sysdate, #{content}, #{parentnum})")
	   void insert(Imgrep ir);

	   @Select("select * from imgrep where num=#{num}")
	   Imgrep select(@Param("num") int num);

	   @Select("select * from imgrep where parentnum = #{parentnum}")
	   ArrayList<Imgrep> selectByParent(@Param("parentnum") int parentnum);

	   @Update("update imgrep set content=#{content} where num=#{num}")
	   void update(Imgrep ir);

	   @Delete("delete from imgrep where num=#{num}")
	   void delete(@Param("num") int num);
	
	
}

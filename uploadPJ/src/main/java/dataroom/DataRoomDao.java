package dataroom;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;




@Mapper
public interface DataRoomDao {
	
		@Insert("insert into DataRoom values(seq_data.nextval , #{title},#{content},#{writer}, sysdate,  #{path},#{cnt})")
	   void insert(DataRoom m);
	
	   @Select("select * from DataRoom where num=#{num}")
	   DataRoom select(@Param("num") int num);

	   @Select("select * from DataRoom")
	   ArrayList<DataRoom> selectAll();
	   
	   @Select("select * from DataRoom where writer=#{writer}")
	   ArrayList<DataRoom> selectByWriter();
	   
	   @Select("select * from DataRoom where title=#{title}")
	   ArrayList<DataRoom> selectByTitle();

	   @Update("update DataRoom set title=#{title}, content=#{content} where num=#{num}")
	   void update(DataRoom m);
	   
	   @Update("update DataRoom set cnt=#{cnt} where num=#{num}")
	   void updateCnt(@Param("num") int num, @Param("cnt") int cnt);

	   @Delete("delete from DataRoom where num=#{num}")
	   void delete(@Param("num") int num);
}


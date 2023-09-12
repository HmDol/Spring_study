package guestbook;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface GuestBookDao {
	@Insert("insert into guestbook values(seq_guestbook.nextval, sysdate, #{writer}, #{content}, #{pwd})")
	void insert(GuestBook g);
	
	@Select("select * from guestbook where num=#{num}")
	GuestBook select(@Param("num") int num);
	
	@Select("select * from guestbook order by num")
	ArrayList<GuestBook> selectAll();
	
	@Select("select count(*) from guestbook")
	int selectCount();
	
	@Select("select * from (select rownum r, num, wdate, writer, content, pwd from guestbook order by num)e "
			+ "where r between #{p1} and #{p2}")
	ArrayList<GuestBook> selectByPage(@Param("p1") int p1, @Param("p2") int p2);
	
	@Update("update guestbook set content=#{content} where num=#{num}")
	void update(GuestBook g);
	
	@Delete("delete guestbook where num=#{num}")
	void delete(@Param("num") int num);
}





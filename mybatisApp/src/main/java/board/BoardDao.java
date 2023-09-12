package board;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
@Mapper
public interface BoardDao {
	@Insert("insert into board values(seq_board.nextval,sysdate,#{writer},#{title},#{content})")
	void insert(Board b);
	
	@Select("select * from board where num=#{num}")
	Board select(@Param("num") int num);
	
	@Select("select * from board")
	ArrayList<Board> selectAll();
	
	@Select("select * from board where writer=#{writer}")
	ArrayList<Board> selectByWriter(@Param("writer") String writer);
	
	@Select("select * from board where title like #{title}")
	ArrayList<Board> selectByTitle(@Param("title") String title);
	
	@Update("update board set title=#{title}, content=#{content} where num=#{num}")
	void update(Board b);
	
	@Delete("delete board where num=#{num}")
	void delete(int num);
}

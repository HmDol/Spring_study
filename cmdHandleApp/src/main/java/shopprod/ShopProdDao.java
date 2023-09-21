package shopprod;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface ShopProdDao {
	@Insert("insert into shopprod values(seq_shopprod.nextval,#{name},#{content},#{price},"
			+ "#{amount},#{seller},#{img1},#{img2},#{img3},#{img4})")
	void insert(ShopProd sp);
	
	@Select("select * from shopprod order by num")
	ArrayList<ShopProd> selectAll();
	
	@Select("select * from shopprod where num=#{num}")
	ShopProd select(@Param("num") int num);
	
	@Select("select * from shopprod where name like #{name}")
	ArrayList<ShopProd> selectByName(@Param("name") String name);
	
	@Select("select * from shopprod where seller like #{seller}")
	ArrayList<ShopProd> selectBySeller(@Param("seller") String seller);
	
	@Update("update shopprod set name=#{name}, content=#{content}, price=#{price} where num=#{num}")
	void update(ShopProd sp);
	
	@Delete("delete shopprod where num=#{num}")
	void delete(@Param("num") int num);
}






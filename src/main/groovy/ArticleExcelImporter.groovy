package terramapp

import org.grails.plugins.excelimport.*
import org.springframework.beans.factory.annotation.Autowired
import static org.grails.plugins.excelimport.ExpectedPropertyType.StringType

class ArticleExcelImporter extends AbstractExcelImporter{

    static cellReporter = new DefaultImportCellCollector()

    @Autowired
    ExcelImportService excelImportService

    public ArticleExcelImporter(file){
        super(file)
        excelImportService = ExcelImportService.getService()
    }

    static Map configuratiomMap = [
            code: ([expectedType: StringType, defaultValue: ""]),
            id: ([expectedType: StringType, defaultValue: ""])
    ]

    static Map CONFIG_PAYMENT_COLUMN_MAP = [
            sheet:'Sheet1',
            startRow: 1,
            columnMap:  [
                    'A':'nameCRO',
                    'B':'nameENG',
                    'C':'nameLAT',
            ]
    ]

    List<Map> list() {
        excelImportService.columns(
                workbook,
                CONFIG_PAYMENT_COLUMN_MAP,
                cellReporter,
                configuratiomMap
        )
    }

}